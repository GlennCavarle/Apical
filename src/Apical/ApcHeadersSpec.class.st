Class {
	#name : #ApcHeadersSpec,
	#superclass : #ApcRequestSpec,
	#instVars : [
		'znHeaders'
	],
	#category : #'Apical-Spec'
}

{ #category : #'public - non-standard headers' }
ApcHeadersSpec >> DNT: anObject [
	znHeaders at: 'DNT' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> TE: anObject [
	znHeaders at:'TE' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> accept: anObject [
	znHeaders at: 'Accept' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> acceptCharset: anObject [
	znHeaders at: 'Accept-Charset' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> acceptLanguage: anObject [
	znHeaders at: 'Accept-Language' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> accessControlRequestHeaders: anObject [
	znHeaders at: 'Access-Control-Request-Headers' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> accessControlRequestMethod: anObject [
	znHeaders at: 'Access-Control-Request-Method' put: anObject asString
]

{ #category : #private }
ApcHeadersSpec >> applyOnRequest: aZnRequest [
	aZnRequest headers addAll: znHeaders
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> authorization: anObject [
	znHeaders at: 'Authorization' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> cacheControl: anObject [
	znHeaders at: 'Cache-Control' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> connection: anObject [
	znHeaders at:'Connection' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> contentLength: anObject [
	znHeaders contentLength: anObject
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> contentMD5: anObject [
	znHeaders at:'ContentMD5' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> contentType: anObject [
	znHeaders contentType: anObject
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> cookie: anObject [
	znHeaders at:'Cookie' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> date: anObject [
	znHeaders at:'Date' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> expect: anObject [
	znHeaders at: 'Expect' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> forwarded: anObject [
	znHeaders at:'Forwarded' put: anObject asString
]

{ #category : #'public - non-standard headers' }
ApcHeadersSpec >> frontEndHttps: anObject [
	znHeaders at: 'Front-End-Https' put: anObject asString
]

{ #category : #accessing }
ApcHeadersSpec >> headers [
	^ znHeaders 
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> host: anObject [
	znHeaders at: 'Host' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> ifMatch: anObject [
	znHeaders at:'If-Match' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> ifModifiedSince: anObject [
	znHeaders at:'If-Modified-Since' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> ifNoneMatch: anObject [
	znHeaders at:'If-None-Match' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> ifRange: anObject [
	znHeaders at:'If-Range' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> ifUnmodifiedSince: anObject [
	znHeaders at: 'If-Unmodified-Since' put: anObject asString
]

{ #category : #initialization }
ApcHeadersSpec >> initialize [
	super initialize.
	znHeaders := ZnHeaders new
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> maxForwards: anObject [
	znHeaders at:'Max-Forwards' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> origin: anObject [
	znHeaders at:'Origin' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> pragma: anObject [
	znHeaders at:'Pragma' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> proxyAuthorization: anObject [
	znHeaders at:'Proxy-Authorization' put: anObject asString
]

{ #category : #'public - non-standard headers' }
ApcHeadersSpec >> proxyConnection: anObject [
	znHeaders at: 'Proxy-Connection' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> range: anObject [
	znHeaders at:'Range' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> referer: anObject [
	znHeaders at:'Referer' put: anObject asString
]

{ #category : #'public - non-standard headers' }
ApcHeadersSpec >> saveData: anObject [
	znHeaders at: 'Save-Data' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> upgrade: anObject [
	znHeaders at:'Upgrade' put: anObject asString
]

{ #category : #'public - non-standard headers' }
ApcHeadersSpec >> upgradeInsecureRequests: anObject [
	znHeaders at: 'Upgrade-Insecure-Requests' put: anObject asString
]

{ #category : #composing }
ApcHeadersSpec >> use: anHeadsSpec [
	znHeaders addAll: anHeadsSpec headers
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> userAgent: anObject [
	znHeaders at:'User-Agent' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> via: anObject [
	znHeaders at:'Via' put: anObject asString
]

{ #category : #'public - standard headers' }
ApcHeadersSpec >> warning: anObject [
	znHeaders at: 'Warning' put: anObject asString
]

{ #category : #'public - non-standard headers' }
ApcHeadersSpec >> xATTDeviceId: anObject [
	znHeaders at: 'X-ATT-DeviceId' put: anObject asString
]

{ #category : #'public - non-standard headers' }
ApcHeadersSpec >> xCorrelationID: anObject [
	znHeaders at: 'X-Correlation-ID' put: anObject asString
]

{ #category : #'public - non-standard headers' }
ApcHeadersSpec >> xCsrfToken: anObject [
	znHeaders at: 'X-Csrf-Token' put: anObject asString
]

{ #category : #'public - non-standard headers' }
ApcHeadersSpec >> xForwardedFor: anObject [
	znHeaders at: 'X-Forwarded-For' put: anObject asString
]

{ #category : #'public - non-standard headers' }
ApcHeadersSpec >> xForwardedHost: anObject [
	znHeaders at: 'X-Forwarded-Host' put: anObject asString
]

{ #category : #'public - non-standard headers' }
ApcHeadersSpec >> xForwardedProto: anObject [
	znHeaders at: 'X-Forwarded-Proto' put: anObject asString
]

{ #category : #'public - non-standard headers' }
ApcHeadersSpec >> xHttpMethodOverride: anObject [
	znHeaders at: 'X-Http-Method-Override' put: anObject asString
]

{ #category : #'public - non-standard headers' }
ApcHeadersSpec >> xRequestID: anObject [
	znHeaders at: 'X-Request-ID' put: anObject asString
]

{ #category : #'public - non-standard headers' }
ApcHeadersSpec >> xRequestedWith: anObject [
	znHeaders at: 'X-Requested-With' put: anObject asString
]

{ #category : #'public - non-standard headers' }
ApcHeadersSpec >> xUIDH: anObject [
	znHeaders at: 'X-UIDH' put: anObject asString
]
