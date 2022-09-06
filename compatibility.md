# Compatibility constraints

## Incoming requests

The system is as lenient as possible with incoming requests - this overall approach is detailed in this section.
Intention is to have business continuity, even when external systems behave unexpectedly.

Unexpected behavior includes:

- Software faults in external devices
- Upgraded clients talking to older services

**Caveat**: Checks for exploitation override business continuity requirements (example- large payloads, DOS attacks)

### OCPP requests

`OCPP-mandatory` When mandatory parameters are missing in an incoming OCPP Action,
the system ignores the error when it doesn't affect business continuity.

Examples:

1. When timestamps are missing, the current time is assumed
1. StatusNotification is always taken with the current time, not the incoming time-stamp.

Rationale: Business continuity in an environment of new chargers - deliver as good a user experience as possible, while keeping the option of reconciliation in the future.

### REST API

`extra-params` Tolerate extra parameters in incoming requests

Examples:

1. The system ignores extra / unknown query-parameters in the URL
1. When the body of a request contains extra parameters, the system ignores them

Rationale: Customers use the product in diverse, rapidly evolving contexts.
Situations where a newer client talks to an older server are possible.
In these cases, the incoming requests can contain extra parameters that reflect additional functionality. The system needs to tolerate them.
