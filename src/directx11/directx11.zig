// //
// //  Copyright (c) 2019 emekoi
// //
// //  This library is free software; you can redistribute it and/or modify it
// //  under the terms of the MIT license. See LICENSE for details.
// //

// pub const BOOL = c_int;
// pub const BYTE = u8;
// pub const UINT = c_uint;
// pub const UINT8 = u8;
// pub const UINT64 = c_ulonglong;
// pub const INT = c_int;
// pub const FLOAT = f32;
// pub const LONG = c_long;
// pub const DWORD = c_ulong;
// pub const ULONG = c_ulong;

// pub const LPCSTR = [*c]const u8;

// const std = @import("std");
// const c = @import("std").c;
// const win32 = struct {
//     usingnamespace @import("win32").foundation;
//     usingnamespace @import("win32").graphics.direct3d11;
//     usingnamespace @import("win32").graphics.dxgi;
//     usingnamespace @import("win32").system.com;
// };

// // Add Windows types
// pub const GUID = win32.GUID;
// pub const HRESULT = win32.HRESULT;
// pub const DXGIFormat = win32.DXGI_FORMAT;

// //
// //  Copyright (c) 2019 emekoi
// //
// //  This library is free software; you can redistribute it and/or modify it
// //  under the terms of the MIT license. See LICENSE for details.
// //

// pub const AsynGetDataFlag = enum(u32) {
//     DoNotFlush,
// };

// pub const Blend = enum(u32) {
//     Zero = 1,
//     One = 2,
//     SrcColor = 3,
//     InvSrcColor = 4,
//     SrcAlpha = 5,
//     InvSrcAlpha = 6,
//     DestAlpha = 7,
//     InvDestAlpha = 8,
//     DestColor = 9,
//     InvDestColor = 10,
//     SrcAlphaSat = 11,
//     BlendFactor = 14,
//     InvBlendFactor = 15,
//     Src1Color = 16,
//     InvSrc1Color = 17,
//     Src1Alpha = 18,
//     InvSrc1Alpha = 19,
// };

// pub const BlendOp = enum(u32) {
//     Add = 1,
//     Subtract = 2,
//     RevSubtract = 3,
//     Min = 4,
//     Max = 5,
// };

// pub const ClearFlag = enum(u32) {
//     Depth = 1,
//     Stencil = 2,
// };

// pub const ColorWriteEnable = enum(u32) {
//     Red = 1,
//     Green = 2,
//     Blue = 4,
//     Alpha = 8,
//     All = 15,
// };

// pub const ComparisonFunc = enum(u32) {
//     Never = 1,
//     Less = 2,
//     Equal = 3,
//     LessEqual = 4,
//     Greater = 5,
//     NotEqual = 6,
//     GreaterEqual = 7,
//     Always = 8,
// };

// pub const ConservativeRasterizationMode = enum(u32) {
//     Off = 0,
//     On = 1,
// };

// pub const ConservativeRasterizationTier = enum(u32) {
//     NotSupported = 0,
//     One = 1,
//     Two = 2,
//     Three = 3,
// };

// pub const ContextType = enum(u32) {
//     All = 0,
//     ThreeD = 1,
//     Compute = 2,
//     Copy = 3,
//     Video = 4,
// };

// pub const CopyFlags = enum(u32) {
//     NoOverwrite = 1,
//     Discard = 2,
// };

// pub const Counter = enum(u32) {
//     DeviceDependent0 = 1073741824,
// };

// pub const CounterType = enum(u32) {
//     Float32 = 0,
//     Uint16 = 1,
//     Uint32 = 2,
//     Uint64 = 3,
// };

// pub const CreateDeviceFlag = enum(u32) {
//     SingleThreaded = 1,
//     Debug = 2,
//     SwitchToRef = 4,
//     PreventInternalThreadingOptimizations = 8,
//     BGRASupport = 32,
//     Debuggable = 64,
//     PreventAlteringLayerSettingsFromRegistry = 128,
//     DisableGPUTimeout = 256,
//     VideoSupport = 2048,
// };

// pub const CreateDeviceContextStateFlag = enum(u32) {
//     SingleThreaded = 1,
// };

// pub const CullMode = enum(u32) {
//     None = 1,
//     Front = 2,
//     Back = 3,
// };

// pub const DepthWriteMask = enum(u32) {
//     Zero = 0,
//     All = 1,
// };

// pub const DeviceContextType = enum(u32) {
//     Immediate = 0,
//     Deferred = 1,
// };

// pub const Feature = enum(u32) {
//     Threading = 0,
//     Doubles = 1,
//     FormatSupport = 2,
//     FormatSupport2 = 3,
//     D3D10XHardwareOptions = 4,
//     D3D11Options = 5,
//     ArchitectureInfo = 6,
//     D3D9Options = 7,
//     ShaderMinPrecisionSupport = 8,
//     D3D9ShadowSupport = 9,
//     D3D11Options1 = 10,
//     D3D9SimpleInstancingSupport = 11,
//     MarkerSupport = 12,
//     D3D9Options1 = 13,
//     D3D11Options2 = 14,
//     D3D11Options3 = 15,
//     GpuVirtualAddressSupport = 16,
//     D3D11Options4 = 17,
//     ShaderCache = 18,
// };

// pub const FenceFlag = enum(u32) {
//     None = 0,
//     Shared = 2,
//     SharedCrossAdapter = 4,
//     NonMonitored = 8,
// };

// pub const FillMode = enum(u32) {
//     Wireframe = 2,
//     Solid = 3,
// };

// pub const Filter = enum(u32) {
//     MinMagMipPoint = 0,
//     MinMagPointMipLinear = 1,
//     MinPointMagLinearMipPoint = 4,
//     MinPointMagMipLinear = 5,
//     MinLinearMagMipPoint = 16,
//     MinLinearMagPointMipLinear = 17,
//     MinMagLinearMipPoint = 20,
//     MinMagMipLinear = 21,
//     Anisotropic = 85,
//     ComparisonMinMagMipPoint = 128,
//     ComparisonMinMagPointMipLinear = 129,
//     ComparisonMinPointMagLinearMipPoint = 132,
//     ComparisonMinPointMagMipLinear = 133,
//     ComparisonMinLinearMagMipPoint = 144,
//     ComparisonMinLinearMagPointMipLinear = 145,
//     ComparisonMinMagLinearMipPoint = 148,
//     ComparisonMinMagMipLinear = 149,
//     ComparisonAnisotropic = 213,
// };

// pub const FilterType = enum(u32) {
//     Point = 0,
//     Linear = 1,
// };

// pub const FilterReductionType = enum(u32) {
//     Standard = 0,
//     Comparison = 1,
//     Minimum = 2,
//     Maximum = 3,
// };

// pub const FormatSupport = enum(u32) {
//     Buffer = 1,
//     IAVertexBuffer = 2,
//     IAIndexBuffer = 4,
//     SOBuffer = 8,
//     Texture1d = 16,
//     Texture2d = 32,
//     Texture3d = 64,
//     Texturecube = 128,
//     ShaderLoad = 256,
//     ShaderSample = 512,
//     ShaderSampleComparison = 1024,
//     ShaderSampleMonoText = 2048,
//     Mip = 4096,
//     MipAutogen = 8192,
//     RenderTarget = 16384,
//     Blendable = 32768,
//     DepthStencil = 65536,
//     CPULockable = 131072,
//     MultisampleResolve = 262144,
//     Display = 524288,
//     CastWithinBitLayout = 1048576,
//     MultisampleRendertarget = 2097152,
//     MultisampleLoad = 4194304,
//     ShaderGather = 8388608,
//     BackBufferCast = 16777216,
//     TypedUnorderedAccessView = 33554432,
//     ShaderGatherComparison = 67108864,
//     DecoderOutput = 134217728,
//     VideoProcessorOutput = 268435456,
//     VideoProcessorInput = 536870912,
//     VideoEncoder = 1073741824,
// };

// pub const FormatSupport2 = enum(u32) {
//     UAVAtomicAdd = 1,
//     UAVAtomicBitwiseOps = 2,
//     UAVAtomicCompareStoreOrCompareExchange = 4,
//     UAVAtomicExchange = 8,
//     UAVAtomicSignedMinOrMax = 16,
//     UAVAtomicUnsignedMinOrMax = 32,
//     UAVTypedLoad = 64,
//     UAVTypedStore = 128,
//     OutputMergerLogicOp = 256,
//     Tiled = 512,
//     Shareable = 1024,
//     MultiplaneOverlay = 16384,
// };

// pub const InputClassification = enum(u32) {
//     PerVertexData = 0,
//     PerInstanceData = 1,
// };

// pub const LogicOp = enum(u32) {
//     Clear = 0,
//     Set = 1,
//     Copy = 2,
//     CopyInverted = 3,
//     Noop = 4,
//     Invert = 5,
//     And = 6,
//     Nand = 7,
//     Or = 8,
//     Nor = 9,
//     Xor = 10,
//     Equiv = 11,
//     AndReverse = 12,
//     AndInverted = 13,
//     OrReverse = 14,
//     OrInverted = 15,
// };

// pub const Primitive = enum(u32) {
//     Undefined = 0,
//     Point = 1,
//     Line = 2,
//     Triangle = 3,
//     LineAdj = 6,
//     TriangleAdj = 7,
//     ControlPointPatch1 = 8,
//     ControlPointPatch2 = 9,
//     ControlPointPatch3 = 10,
//     ControlPointPatch4 = 11,
//     ControlPointPatch5 = 12,
//     ControlPointPatch6 = 13,
//     ControlPointPatch7 = 14,
//     ControlPointPatch8 = 15,
//     ControlPointPatch9 = 16,
//     ControlPointPatch10 = 17,
//     ControlPointPatch11 = 18,
//     ControlPointPatch12 = 19,
//     ControlPointPatch13 = 20,
//     ControlPointPatch14 = 21,
//     ControlPointPatch15 = 22,
//     ControlPointPatch16 = 23,
//     ControlPointPatch17 = 24,
//     ControlPointPatch18 = 25,
//     ControlPointPatch19 = 26,
//     ControlPointPatch20 = 27,
//     ControlPointPatch21 = 28,
//     ControlPointPatch22 = 29,
//     ControlPointPatch23 = 30,
//     ControlPointPatch24 = 31,
//     ControlPointPatch25 = 32,
//     ControlPointPatch26 = 33,
//     ControlPointPatch27 = 34,
//     ControlPointPatch28 = 35,
//     ControlPointPatch29 = 36,
//     ControlPointPatch30 = 37,
//     ControlPointPatch31 = 38,
//     ControlPointPatch32 = 39,
// };

// pub const PrimitiveTopology = enum(u32) {
//     Undefined = 0,
//     Pointlist = 1,
//     Linelist = 2,
//     Linestrip = 3,
//     Trianglelist = 4,
//     Trianglestrip = 5,
//     LinelistAdj = 10,
//     LinestripAdj = 11,
//     TrianglelistAdj = 12,
//     TrianglestripAdj = 13,
//     ControlPointPatchlist1 = 33,
//     ControlPointPatchlist2 = 34,
//     ControlPointPatchlist3 = 35,
//     ControlPointPatchlist4 = 36,
//     ControlPointPatchlist5 = 37,
//     ControlPointPatchlist6 = 38,
//     ControlPointPatchlist7 = 39,
//     ControlPointPatchlist8 = 40,
//     ControlPointPatchlist9 = 41,
//     ControlPointPatchlist10 = 42,
//     ControlPointPatchlist11 = 43,
//     ControlPointPatchlist12 = 44,
//     ControlPointPatchlist13 = 45,
//     ControlPointPatchlist14 = 46,
//     ControlPointPatchlist15 = 47,
//     ControlPointPatchlist16 = 48,
//     ControlPointPatchlist17 = 49,
//     ControlPointPatchlist18 = 50,
//     ControlPointPatchlist19 = 51,
//     ControlPointPatchlist20 = 52,
//     ControlPointPatchlist21 = 53,
//     ControlPointPatchlist22 = 54,
//     ControlPointPatchlist23 = 55,
//     ControlPointPatchlist24 = 56,
//     ControlPointPatchlist25 = 57,
//     ControlPointPatchlist26 = 58,
//     ControlPointPatchlist27 = 59,
//     ControlPointPatchlist28 = 60,
//     ControlPointPatchlist29 = 61,
//     ControlPointPatchlist30 = 62,
//     ControlPointPatchlist31 = 63,
//     ControlPointPatchlist32 = 64,
// };

// pub const Query = enum(u32) {
//     Event = 0,
//     Occlusion = 1,
//     Timestamp = 2,
//     TimestampDisjoint = 3,
//     PipelineStatistics = 4,
//     OcclusionPredicate = 5,
//     SOStatistics = 6,
//     SOOverflowPredicate = 7,
//     SOStatisticsStream0 = 8,
//     SOOverflowPredicateStream0 = 9,
//     SOStatisticsStream1 = 10,
//     SOOverflowPredicateStream1 = 11,
//     SOStatisticsStream2 = 12,
//     SOOverflowPredicateStream2 = 13,
//     SOStatisticsStream3 = 14,
//     SOOverflowPredicateStream3 = 15,
// };

// pub const QueryMiscFlag = enum(u32) {
//     PredicateHint = 1,
// };

// pub const RaiseFlag = enum(u32) {
//     DriverInternalError = 1,
// };

// pub const ShaderCacheSupportFlags = enum(u32) {
//     None = 0,
//     AutomaticInprocCache = 1,
//     AutomaticDiskCache = 2,
// };

// pub const MinPrecisionSupport = enum(u32) {
//     Precision10Bit = 1,
//     Precision16Bit = 2,
// };

// pub const StencilOp = enum(u32) {
//     Keep = 1,
//     Zero = 2,
//     Replace = 3,
//     IncrSat = 4,
//     DecrSat = 5,
//     Invert = 6,
//     Incr = 7,
//     Decr = 8,
// };

// pub const TextureAddressMode = enum(u32) {
//     Wrap = 1,
//     Mirror = 2,
//     Clamp = 3,
//     Border = 4,
//     MirrorOnce = 5,
// };

// pub const TextureCubeFace = enum(u32) {
//     PositiveX = 0,
//     NegativeX = 1,
//     PositiveY = 2,
//     NegativeY = 3,
//     PositiveZ = 4,
//     NegativeZ = 5,
// };

// pub const TiledResourcesTier = enum(u32) {
//     NotSupported = 0,
//     One = 1,
//     Two = 2,
//     Three = 3,
// };

// pub const IAsynchronous = extern struct {
//     const Interface = @This();

// pub const VTable = extern struct {
//     QueryInterface: *const fn (*Interface, *const win32.GUID, *?*anyopaque) win32.HRESULT,
//     AddRef: *const fn (*Interface) win32.ULONG,
//     Release: *const fn (*Interface) win32.ULONG,
//     GetDevice: *const fn (*Interface, **IDevice) void,
//     GetPrivateData: *const fn (*Interface, *const win32.GUID, *win32.UINT, [*]win32.BYTE) win32.HRESULT,
//     SetPrivateData: *const fn (*Interface, *const win32.GUID, win32.UINT, ?[*]const win32.BYTE) win32.HRESULT,
//     SetPrivateDataInterface: *const fn (*Interface, *const win32.GUID, *const win32.IUnknown) win32.HRESULT,
//     GetDataSize: *const fn (*Interface) win32.UINT,
// };

//     lpVtbl: *VTable,
// };

// pub const IBlendState = extern struct {
//     const Interface = @This();

//     pub const VTable = extern struct {
//         QueryInterface: *const fn (*Interface, *const GUID, *?*anyopaque) HRESULT,
//         AddRef: *const fn (*Interface) ULONG,
//         Release: *const fn (*Interface) ULONG,
//         GetDevice: *const fn (*Interface, **IDevice) void,
//         GetPrivateData: *const fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
//         SetPrivateData: *const fn (*Interface, *const GUID, UINT, ?[*]const BYTE) HRESULT,
//         SetPrivateDataInterface: *const fn (*Interface, *const GUID, *const IUnknown) HRESULT,
//         GetDesc: *const fn (*Interface, *BlendDesc) void,
//     };

//     lpVtbl: *VTable,
// };

// pub const IBlendState1 = extern struct {
//     const Interface = @This();

//     pub const VTable = extern struct {
//         QueryInterface: *const fn (*Interface, *const GUID, *?*anyopaque) HRESULT,
//         AddRef: *const fn (*Interface) ULONG,
//         Release: *const fn (*Interface) ULONG,
//         GetDevice: *const fn (*Interface, **IDevice) void,
//         GetPrivateData: *const fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
//         SetPrivateData: *const fn (*Interface, *const GUID, UINT, ?[*]const BYTE) HRESULT,
//         SetPrivateDataInterface: *const fn (*Interface, *const GUID, *const IUnknown) HRESULT,
//         GetDesc: *const fn (*Interface, *BlendDesc) void,
//         GetDesc1: *const fn (*Interface, *BlendDesc1) void,
//     };

//     lpVtbl: *VTable,
// };

// pub const ICommandList = extern struct {
//     const Interface = @This();

//     pub const VTable = extern struct {
//         QueryInterface: *const fn (*Interface, *const GUID, *?*anyopaque) HRESULT,
//         AddRef: *const fn (*Interface) ULONG,
//         Release: *const fn (*Interface) ULONG,
//         GetDevice: *const fn (*Interface, **IDevice) void,
//         GetPrivateData: *const fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
//         SetPrivateData: *const fn (*Interface, *const GUID, UINT, ?[*]const BYTE) HRESULT,
//         SetPrivateDataInterface: *const fn (*Interface, *const GUID, *const IUnknown) HRESULT,
//         GetContextFlags: *const fn (*Interface) UINT,
//     };

//     lpVtbl: *VTable,
// };

// pub const ICounter = extern struct {
//     const Interface = @This();

//     pub const VTable = extern struct {
//         QueryInterface: *const fn (*Interface, *const GUID, *?*anyopaque) HRESULT,
//         AddRef: *const fn (*Interface) ULONG,
//         Release: *const fn (*Interface) ULONG,
//         GetDevice: *const fn (*Interface, **IDevice) void,
//         GetPrivateData: *const fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
//         SetPrivateData: *const fn (*Interface, *const GUID, UINT, ?[*]const BYTE) HRESULT,
//         SetPrivateDataInterface: *const fn (*Interface, *const GUID, *const IUnknown) HRESULT,
//         GetDataSize: *const fn (*Interface) UINT,
//         GetDesc: *const fn (*Interface, *CounterDesc) void,
//     };

//     lpVtbl: *VTable,
// };

// pub const IDepthStencilState = extern struct {
//     const Interface = @This();

//     pub const VTable = extern struct {
//         QueryInterface: *const fn (*Interface, *const GUID, *?*anyopaque) HRESULT,
//         AddRef: *const fn (*Interface) ULONG,
//         Release: *const fn (*Interface) ULONG,
//         GetDevice: *const fn (*Interface, **IDevice) void,
//         GetPrivateData: *const fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
//         SetPrivateData: *const fn (*Interface, *const GUID, UINT, ?[*]const BYTE) HRESULT,
//         SetPrivateDataInterface: *const fn (*Interface, *const GUID, *const IUnknown) HRESULT,
//         GetDesc: *const fn (*Interface, *DepthStencilDesc) void,
//     };

//     lpVtbl: *VTable,
// };

// pub const IDevice = extern struct {
//     const Interface = @This();

//     pub const VTable = extern struct {
//         QueryInterface: *const fn (*Interface, *const GUID, *?*anyopaque) HRESULT,
//         AddRef: *const fn (*Interface) win32.ULONG,
//         Release: *const fn (*Interface) win32.ULONG,
//         CreateBuffer: *const fn (*Interface, *const BufferDesc, ?*const SubresourceData, ?**IBuffer) HRESULT,
//         CreateTexture1D: *const fn (*Interface, *const Texture1DDesc, ?*const SubresourceData, ?**ITexture1D) HRESULT,
//         CreateTexture2D: *const fn (*Interface, *const Texture2DDesc, ?*const SubresourceData, ?**ITexture2D) HRESULT,
//         CreateTexture3D: *const fn (*Interface, *const Texture3DDesc, ?*const SubresourceData, ?**ITexture3D) HRESULT,
//         CreateShaderResourceView: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IShaderResourceView) HRESULT,
//         CreateUnorderedAccessView: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IUnorderedAccessView) HRESULT,
//         CreateRenderTargetView: *const fn (*Interface, *IResource, ?*const RenderTargetViewDesc, ?**IRenderTargetView) HRESULT,
//         CreateDepthStencilView: *const fn (*Interface, *IResource, ?*const DepthStencilDesc, ?**IDepthStencilView) HRESULT,
//         CreateInputLayout: *const fn (*Interface, *const InputElementDesc, UINT, [*]const BYTE, SIZE_T, ?**IInputLayout) HRESULT,
//         CreateVertexShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IVertexShader) HRESULT,
//         CreateGeometryShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
//         CreateGeometryShaderWithStreamOutput: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*const SODeclarationEntry, UINT, *const UINT, UINT, UINT, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
//         CreatePixelShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IPixelShader) HRESULT,
//         CreateHullShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, **IHullShader) HRESULT,
//         CreateDomainShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IDomainShader) HRESULT,
//         CreateComputeShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IComputeShader) HRESULT,
//         CreateClassLinkage: *const fn (*Interface, **IClassLinkage) HRESULT,
//         CreateBlendState: *const fn (*Interface, *const BlendDesc, **IBlendState) HRESULT,
//         CreateDepthStencilState: *const fn (*Interface, *const DepthStencilDesc, **IDepthStencilState) HRESULT,
//         CreateRasterizerState: *const fn (*Interface, *const RasterizerDesc, **IRasterizerState) HRESULT,
//         CreateSamplerState: *const fn (*Interface, *const SamplerDesc, **ISamplerState) HRESULT,
//         CreateQuery: *const fn (*Interface, *const QueryDesc, **IQuery) HRESULT,
//         CreatePredicate: *const fn (*Interface, *const QueryDesc, **IPredicate) HRESULT,
//         CreateCounter: *const fn (*Interface, *const CounterDesc, **ICounter) HRESULT,
//         CreateDeferredContext: *const fn (*Interface, UINT, **InterfaceContext) HRESULT,
//         OpenSharedResource: *const fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
//         CheckFormatSupport: *const fn (*Interface, DXGIFormat, *UINT) HRESULT,
//         CheckMultisampleQualityLevels: *const fn (*Interface, DXGIFormat, UINT, *UINT) HRESULT,
//         CheckCounterInfo: *const fn (*Interface, *CounterInfo) void,
//         CheckCounter: *const fn (*Interface, *const CounterDesc, *CounterType, *UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT) HRESULT,
//         CheckFeatureSupport: *const fn (*Interface, Feature, [*]BYTE, UINT) HRESULT,
//         GetPrivateData: *const fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
//         SetPrivateData: *const fn (*Interface, *const GUID, UINT, [*]const BYTE) HRESULT,
//         SetPrivateDataInterface: *const fn (*Interface, *const GUID, *const IUnknown) HRESULT,
//         GetFeatureLevel: *const fn (*Interface) FeatureLevel,
//         GetCreationFlags: *const fn (*Interface) UINT,
//         GetDeviceRemovedReason: *const fn (*Interface) HRESULT,
//         GetImmediateContext: *const fn (*Interface, **InterfaceContext) void,
//         SetExceptionMode: *const fn (*Interface, UINT) HRESULT,
//         GetExceptionMode: *const fn (*Interface) UINT,
//     };

//     lpVtbl: *VTable,
// };

// pub const IDevice1 = extern struct {
//     const Interface = @This();

//     pub const VTable = extern struct {
//         QueryInterface: *const fn (*Interface, *const GUID, *?*anyopaque) HRESULT,
//         AddRef: *const fn (*Interface) ULONG,
//         Release: *const fn (*Interface) ULONG,
//         CreateBuffer: *const fn (*Interface, *const BufferDesc, ?*const SubresourceData, ?**IBuffer) HRESULT,
//         CreateTexture1D: *const fn (*Interface, *const Texture1DDesc, ?*const SubresourceData, ?**ITexture1D) HRESULT,
//         CreateTexture2D: *const fn (*Interface, *const Texture2DDesc, ?*const SubresourceData, ?**ITexture2D) HRESULT,
//         CreateTexture3D: *const fn (*Interface, *const Texture3DDesc, ?*const SubresourceData, ?**ITexture3D) HRESULT,
//         CreateShaderResourceView: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IShaderResourceView) HRESULT,
//         CreateUnorderedAccessView: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IUnorderedAccessView) HRESULT,
//         CreateRenderTargetView: *const fn (*Interface, *IResource, ?*const RenderTargetViewDesc, ?**IRenderTargetView) HRESULT,
//         CreateDepthStencilView: *const fn (*Interface, *IResource, ?*const DepthStencilDesc, ?**IDepthStencilView) HRESULT,
//         CreateInputLayout: *const fn (*Interface, *const InputElementDesc, UINT, [*]const BYTE, SIZE_T, ?**IInputLayout) HRESULT,
//         CreateVertexShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IVertexShader) HRESULT,
//         CreateGeometryShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
//         CreateGeometryShaderWithStreamOutput: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*const SODeclarationEntry, UINT, *const UINT, UINT, UINT, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
//         CreatePixelShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IPixelShader) HRESULT,
//         CreateHullShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, **IHullShader) HRESULT,
//         CreateDomainShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IDomainShader) HRESULT,
//         CreateComputeShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IComputeShader) HRESULT,
//         CreateClassLinkage: *const fn (*Interface, **IClassLinkage) HRESULT,
//         CreateBlendState: *const fn (*Interface, *const BlendDesc, **IBlendState) HRESULT,
//         CreateDepthStencilState: *const fn (*Interface, *const DepthStencilDesc, **IDepthStencilState) HRESULT,
//         CreateRasterizerState: *const fn (*Interface, *const RasterizerDesc, **IRasterizerState) HRESULT,
//         CreateSamplerState: *const fn (*Interface, *const SamplerDesc, **ISamplerState) HRESULT,
//         CreateQuery: *const fn (*Interface, *const QueryDesc, **IQuery) HRESULT,
//         CreatePredicate: *const fn (*Interface, *const QueryDesc, **IPredicate) HRESULT,
//         CreateCounter: *const fn (*Interface, *const CounterDesc, **ICounter) HRESULT,
//         CreateDeferredContext: *const fn (*Interface, UINT, **InterfaceContext) HRESULT,
//         OpenSharedResource: *const fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
//         CheckFormatSupport: *const fn (*Interface, DXGIFormat, *UINT) HRESULT,
//         CheckMultisampleQualityLevels: *const fn (*Interface, DXGIFormat, UINT, *UINT) HRESULT,
//         CheckCounterInfo: *const fn (*Interface, *CounterInfo) void,
//         CheckCounter: *const fn (*Interface, *const CounterDesc, *CounterType, *UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT) HRESULT,
//         CheckFeatureSupport: *const fn (*Interface, Feature, [*]BYTE, UINT) HRESULT,
//         GetPrivateData: *const fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
//         SetPrivateData: *const fn (*Interface, *const GUID, UINT, [*]const BYTE) HRESULT,
//         SetPrivateDataInterface: *const fn (*Interface, *const GUID, *const IUnknown) HRESULT,
//         GetFeatureLevel: *const fn (*Interface) FeatureLevel,
//         GetCreationFlags: *const fn (*Interface) UINT,
//         GetDeviceRemovedReason: *const fn (*Interface) HRESULT,
//         GetImmediateContext: *const fn (*Interface, **InterfaceContext) void,
//         SetExceptionMode: *const fn (*Interface, UINT) HRESULT,
//         GetExceptionMode: *const fn (*Interface) UINT,
//         CreateBlendState1: *const fn (*Interface, *const BlendDesc1, **IBlendState1) HRESULT,
//         CreateDeferredContext1: *const fn (*Interface, UINT, **IDeviceContext1) HRESULT,
//         CreateDeviceContextState: *const fn (*Interface, UINT, [*]const FeatureLevel, UINT, UINT, *const GUID, *FeatureLevel, **IDeviceContextState) HRESULT,
//         CreateRasterizerState1: *const fn (*Interface, *const RasterizerDesc1, **IRasterizerState1) HRESULT,
//         GetImmediateContext1: *const fn (*Interface, **IDeviceContext1) void,
//         OpenSharedResource1: *const fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
//         OpenSharedResourceByName: *const fn (*Interface, LPCWSTR, DWORD, *const GUID, **IResource) HRESULT,
//     };

//     lpVtbl: *VTable,
// };

// pub const IDevice2 = extern struct {
//     const Interface = @This();

//     pub const VTable = extern struct {
//         QueryInterface: *const fn (*Interface, *const GUID, *?*anyopaque) HRESULT,
//         AddRef: *const fn (*Interface) ULONG,
//         Release: *const fn (*Interface) ULONG,
//         CreateBuffer: *const fn (*Interface, *const BufferDesc, ?*const SubresourceData, ?**IBuffer) HRESULT,
//         CreateTexture1D: *const fn (*Interface, *const Texture1DDesc, ?*const SubresourceData, ?**ITexture1D) HRESULT,
//         CreateTexture2D: *const fn (*Interface, *const Texture2DDesc, ?*const SubresourceData, ?**ITexture2D) HRESULT,
//         CreateTexture3D: *const fn (*Interface, *const Texture3DDesc, ?*const SubresourceData, ?**ITexture3D) HRESULT,
//         CreateShaderResourceView: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IShaderResourceView) HRESULT,
//         CreateUnorderedAccessView: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IUnorderedAccessView) HRESULT,
//         CreateRenderTargetView: *const fn (*Interface, *IResource, ?*const RenderTargetViewDesc, ?**IRenderTargetView) HRESULT,
//         CreateDepthStencilView: *const fn (*Interface, *IResource, ?*const DepthStencilDesc, ?**IDepthStencilView) HRESULT,
//         CreateInputLayout: *const fn (*Interface, *const InputElementDesc, UINT, [*]const BYTE, SIZE_T, ?**IInputLayout) HRESULT,
//         CreateVertexShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IVertexShader) HRESULT,
//         CreateGeometryShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
//         CreateGeometryShaderWithStreamOutput: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*const SODeclarationEntry, UINT, *const UINT, UINT, UINT, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
//         CreatePixelShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IPixelShader) HRESULT,
//         CreateHullShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, **IHullShader) HRESULT,
//         CreateDomainShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IDomainShader) HRESULT,
//         CreateComputeShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IComputeShader) HRESULT,
//         CreateClassLinkage: *const fn (*Interface, **IClassLinkage) HRESULT,
//         CreateBlendState: *const fn (*Interface, *const BlendDesc, **IBlendState) HRESULT,
//         CreateDepthStencilState: *const fn (*Interface, *const DepthStencilDesc, **IDepthStencilState) HRESULT,
//         CreateRasterizerState: *const fn (*Interface, *const RasterizerDesc, **IRasterizerState) HRESULT,
//         CreateSamplerState: *const fn (*Interface, *const SamplerDesc, **ISamplerState) HRESULT,
//         CreateQuery: *const fn (*Interface, *const QueryDesc, **IQuery) HRESULT,
//         CreatePredicate: *const fn (*Interface, *const QueryDesc, **IPredicate) HRESULT,
//         CreateCounter: *const fn (*Interface, *const CounterDesc, **ICounter) HRESULT,
//         CreateDeferredContext: *const fn (*Interface, UINT, **InterfaceContext) HRESULT,
//         OpenSharedResource: *const fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
//         CheckFormatSupport: *const fn (*Interface, DXGIFormat, *UINT) HRESULT,
//         CheckMultisampleQualityLevels: *const fn (*Interface, DXGIFormat, UINT, *UINT) HRESULT,
//         CheckCounterInfo: *const fn (*Interface, *CounterInfo) void,
//         CheckCounter: *const fn (*Interface, *const CounterDesc, *CounterType, *UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT) HRESULT,
//         CheckFeatureSupport: *const fn (*Interface, Feature, [*]BYTE, UINT) HRESULT,
//         GetPrivateData: *const fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
//         SetPrivateData: *const fn (*Interface, *const GUID, UINT, [*]const BYTE) HRESULT,
//         SetPrivateDataInterface: *const fn (*Interface, *const GUID, *const IUnknown) HRESULT,
//         GetFeatureLevel: *const fn (*Interface) FeatureLevel,
//         GetCreationFlags: *const fn (*Interface) UINT,
//         GetDeviceRemovedReason: *const fn (*Interface) HRESULT,
//         GetImmediateContext: *const fn (*Interface, **InterfaceContext) void,
//         SetExceptionMode: *const fn (*Interface, UINT) HRESULT,
//         GetExceptionMode: *const fn (*Interface) UINT,
//         CreateBlendState1: *const fn (*Interface, *const BlendDesc1, **IBlendState1) HRESULT,
//         CreateDeferredContext1: *const fn (*Interface, UINT, **IDeviceContext1) HRESULT,
//         CreateDeviceContextState: *const fn (*Interface, UINT, [*]const FeatureLevel, UINT, UINT, *const GUID, *FeatureLevel, **IDeviceContextState) HRESULT,
//         CreateRasterizerState1: *const fn (*Interface, *const RasterizerDesc1, **IRasterizerState1) HRESULT,
//         GetImmediateContext1: *const fn (*Interface, **IDeviceContext1) void,
//         OpenSharedResource1: *const fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
//         OpenSharedResourceByName: *const fn (*Interface, LPCWSTR, DWORD, *const GUID, **IResource) HRESULT,
//         CheckMultisampleQualityLevels1: *const fn (*Interface, DXGIFormat, UINT, UINT, *UINT) HRESULT,
//         CreateDeferredContext2: *const fn (*Interface, UINT, **IDeviceContext2) HRESULT,
//         GetImmediateContext2: *const fn (*Interface, **IDeviceContext2) HRESULT,
//         GetResourceTiling: *const fn (*Interface, *IResource, *UINT, *PackedMipDesc, *TileShape, *UINT, UINT, *SubresourceTiling) void,
//     };

//     lpVtbl: *VTable,
// };

// pub const IDevice3 = extern struct {
//     const Interface = @This();

//     pub const VTable = extern struct {
//         QueryInterface: *const fn (*Interface, *const GUID, *?*anyopaque) HRESULT,
//         AddRef: *const fn (*Interface) ULONG,
//         Release: *const fn (*Interface) ULONG,
//         CreateBuffer: *const fn (*Interface, *const BufferDesc, ?*const SubresourceData, ?**IBuffer) HRESULT,
//         CreateTexture1D: *const fn (*Interface, *const Texture1DDesc, ?*const SubresourceData, ?**ITexture1D) HRESULT,
//         CreateTexture2D: *const fn (*Interface, *const Texture2DDesc, ?*const SubresourceData, ?**ITexture2D) HRESULT,
//         CreateTexture3D: *const fn (*Interface, *const Texture3DDesc, ?*const SubresourceData, ?**ITexture3D) HRESULT,
//         CreateShaderResourceView: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IShaderResourceView) HRESULT,
//         CreateUnorderedAccessView: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IUnorderedAccessView) HRESULT,
//         CreateRenderTargetView: *const fn (*Interface, *IResource, ?*const RenderTargetViewDesc, ?**IRenderTargetView) HRESULT,
//         CreateDepthStencilView: *const fn (*Interface, *IResource, ?*const DepthStencilDesc, ?**IDepthStencilView) HRESULT,
//         CreateInputLayout: *const fn (*Interface, *const InputElementDesc, UINT, [*]const BYTE, SIZE_T, ?**IInputLayout) HRESULT,
//         CreateVertexShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IVertexShader) HRESULT,
//         CreateGeometryShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
//         CreateGeometryShaderWithStreamOutput: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*const SODeclarationEntry, UINT, *const UINT, UINT, UINT, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
//         CreatePixelShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IPixelShader) HRESULT,
//         CreateHullShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, **IHullShader) HRESULT,
//         CreateDomainShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IDomainShader) HRESULT,
//         CreateComputeShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IComputeShader) HRESULT,
//         CreateClassLinkage: *const fn (*Interface, **IClassLinkage) HRESULT,
//         CreateBlendState: *const fn (*Interface, *const BlendDesc, **IBlendState) HRESULT,
//         CreateDepthStencilState: *const fn (*Interface, *const DepthStencilDesc, **IDepthStencilState) HRESULT,
//         CreateRasterizerState: *const fn (*Interface, *const RasterizerDesc, **IRasterizerState) HRESULT,
//         CreateSamplerState: *const fn (*Interface, *const SamplerDesc, **ISamplerState) HRESULT,
//         CreateQuery: *const fn (*Interface, *const QueryDesc, **IQuery) HRESULT,
//         CreatePredicate: *const fn (*Interface, *const QueryDesc, **IPredicate) HRESULT,
//         CreateCounter: *const fn (*Interface, *const CounterDesc, **ICounter) HRESULT,
//         CreateDeferredContext: *const fn (*Interface, UINT, **InterfaceContext) HRESULT,
//         OpenSharedResource: *const fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
//         CheckFormatSupport: *const fn (*Interface, DXGIFormat, *UINT) HRESULT,
//         CheckMultisampleQualityLevels: *const fn (*Interface, DXGIFormat, UINT, *UINT) HRESULT,
//         CheckCounterInfo: *const fn (*Interface, *CounterInfo) void,
//         CheckCounter: *const fn (*Interface, *const CounterDesc, *CounterType, *UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT) HRESULT,
//         CheckFeatureSupport: *const fn (*Interface, Feature, [*]BYTE, UINT) HRESULT,
//         GetPrivateData: *const fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
//         SetPrivateData: *const fn (*Interface, *const GUID, UINT, [*]const BYTE) HRESULT,
//         SetPrivateDataInterface: *const fn (*Interface, *const GUID, *const IUnknown) HRESULT,
//         GetFeatureLevel: *const fn (*Interface) FeatureLevel,
//         GetCreationFlags: *const fn (*Interface) UINT,
//         GetDeviceRemovedReason: *const fn (*Interface) HRESULT,
//         GetImmediateContext: *const fn (*Interface, **InterfaceContext) void,
//         SetExceptionMode: *const fn (*Interface, UINT) HRESULT,
//         GetExceptionMode: *const fn (*Interface) UINT,
//         CreateBlendState1: *const fn (*Interface, *const BlendDesc1, **IBlendState1) HRESULT,
//         CreateDeferredContext1: *const fn (*Interface, UINT, **IDeviceContext1) HRESULT,
//         CreateDeviceContextState: *const fn (*Interface, UINT, [*]const FeatureLevel, UINT, UINT, *const GUID, *FeatureLevel, **IDeviceContextState) HRESULT,
//         CreateRasterizerState1: *const fn (*Interface, *const RasterizerDesc1, **IRasterizerState1) HRESULT,
//         GetImmediateContext1: *const fn (*Interface, **IDeviceContext1) void,
//         OpenSharedResource1: *const fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
//         OpenSharedResourceByName: *const fn (*Interface, LPCWSTR, DWORD, *const GUID, **IResource) HRESULT,
//         CheckMultisampleQualityLevels1: *const fn (*Interface, DXGIFormat, UINT, UINT, *UINT) HRESULT,
//         CreateDeferredContext2: *const fn (*Interface, UINT, **IDeviceContext2) HRESULT,
//         GetImmediateContext2: *const fn (*Interface, **IDeviceContext2) HRESULT,
//         GetResourceTiling: *const fn (*Interface, *IResource, *UINT, *PackedMipDesc, *TileShape, *UINT, UINT, *SubresourceTiling) void,
//         CreateDeferredContext3: *const fn (*Interface, UINT, **IDeviceContext3) HRESULT,
//         CreateQuery1: *const fn (*Interface, *const QueryDesc1, ?**IQuery) HRESULT,
//         CreateRasterizerState2: *const fn (*Interface, *RasterizerDesc2, ?**IRasterizerState2) HRESULT,
//         CreateRenderTargetView1: *const fn (*Interface, ?*const RenderTargetViewDesc1, ?**IRenderTargetView1) HRESULT,
//         CreateShaderResourceView1: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc1, ?**IShaderResourceView1) HRESULT,
//         CreateTexture2D1: *const fn (*Interface, *const Texture2DDesc1, ?*const SubresourceData, ?**ITexture2D1) HRESULT,
//         CreateTexture3D1: *const fn (*Interface, *const Texture3DDesc1, ?*const SubresourceData, ?**ITexture3D1) HRESULT,
//         CreateUnorderedAccessView1: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc1, ?**IUnorderedAccessView1) HRESULT,
//         GetImmediateContext3: *const fn (*Interface, **IDeviceContext3) HRESULT,
//         ReadFromSubresource: *const fn (*Interface, [*]BYTE, UINT, UINT, *IResource, UINT, *const Box) void,
//         WriteToSubresource: *const fn (*Interface, *IResource, UINT, *const Box, [*]const BYTE, UINT, UINT) void,
//     };

//     lpVtbl: *VTable,
// };

// pub const IDevice4 = extern struct {
//     const Interface = @This();

//     pub const VTable = extern struct {
//         QueryInterface: *const fn (*Interface, *const GUID, *?*anyopaque) HRESULT,
//         AddRef: *const fn (*Interface) ULONG,
//         Release: *const fn (*Interface) ULONG,
//         CreateBuffer: *const fn (*Interface, *const BufferDesc, ?*const SubresourceData, ?**IBuffer) HRESULT,
//         CreateTexture1D: *const fn (*Interface, *const Texture1DDesc, ?*const SubresourceData, ?**ITexture1D) HRESULT,
//         CreateTexture2D: *const fn (*Interface, *const Texture2DDesc, ?*const SubresourceData, ?**ITexture2D) HRESULT,
//         CreateTexture3D: *const fn (*Interface, *const Texture3DDesc, ?*const SubresourceData, ?**ITexture3D) HRESULT,
//         CreateShaderResourceView: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IShaderResourceView) HRESULT,
//         CreateUnorderedAccessView: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IUnorderedAccessView) HRESULT,
//         CreateRenderTargetView: *const fn (*Interface, *IResource, ?*const RenderTargetViewDesc, ?**IRenderTargetView) HRESULT,
//         CreateDepthStencilView: *const fn (*Interface, *IResource, ?*const DepthStencilDesc, ?**IDepthStencilView) HRESULT,
//         CreateInputLayout: *const fn (*Interface, *const InputElementDesc, UINT, [*]const BYTE, SIZE_T, ?**IInputLayout) HRESULT,
//         CreateVertexShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IVertexShader) HRESULT,
//         CreateGeometryShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
//         CreateGeometryShaderWithStreamOutput: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*const SODeclarationEntry, UINT, *const UINT, UINT, UINT, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
//         CreatePixelShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IPixelShader) HRESULT,
//         CreateHullShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, **IHullShader) HRESULT,
//         CreateDomainShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IDomainShader) HRESULT,
//         CreateComputeShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IComputeShader) HRESULT,
//         CreateClassLinkage: *const fn (*Interface, **IClassLinkage) HRESULT,
//         CreateBlendState: *const fn (*Interface, *const BlendDesc, **IBlendState) HRESULT,
//         CreateDepthStencilState: *const fn (*Interface, *const DepthStencilDesc, **IDepthStencilState) HRESULT,
//         CreateRasterizerState: *const fn (*Interface, *const RasterizerDesc, **IRasterizerState) HRESULT,
//         CreateSamplerState: *const fn (*Interface, *const SamplerDesc, **ISamplerState) HRESULT,
//         CreateQuery: *const fn (*Interface, *const QueryDesc, **IQuery) HRESULT,
//         CreatePredicate: *const fn (*Interface, *const QueryDesc, **IPredicate) HRESULT,
//         CreateCounter: *const fn (*Interface, *const CounterDesc, **ICounter) HRESULT,
//         CreateDeferredContext: *const fn (*Interface, UINT, **InterfaceContext) HRESULT,
//         OpenSharedResource: *const fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
//         CheckFormatSupport: *const fn (*Interface, DXGIFormat, *UINT) HRESULT,
//         CheckMultisampleQualityLevels: *const fn (*Interface, DXGIFormat, UINT, *UINT) HRESULT,
//         CheckCounterInfo: *const fn (*Interface, *CounterInfo) void,
//         CheckCounter: *const fn (*Interface, *const CounterDesc, *CounterType, *UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT) HRESULT,
//         CheckFeatureSupport: *const fn (*Interface, Feature, [*]BYTE, UINT) HRESULT,
//         GetPrivateData: *const fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
//         SetPrivateData: *const fn (*Interface, *const GUID, UINT, [*]const BYTE) HRESULT,
//         SetPrivateDataInterface: *const fn (*Interface, *const GUID, *const IUnknown) HRESULT,
//         GetFeatureLevel: *const fn (*Interface) FeatureLevel,
//         GetCreationFlags: *const fn (*Interface) UINT,
//         GetDeviceRemovedReason: *const fn (*Interface) HRESULT,
//         GetImmediateContext: *const fn (*Interface, **InterfaceContext) void,
//         SetExceptionMode: *const fn (*Interface, UINT) HRESULT,
//         GetExceptionMode: *const fn (*Interface) UINT,
//         CreateBlendState1: *const fn (*Interface, *const BlendDesc1, **IBlendState1) HRESULT,
//         CreateDeferredContext1: *const fn (*Interface, UINT, **IDeviceContext1) HRESULT,
//         CreateDeviceContextState: *const fn (*Interface, UINT, [*]const FeatureLevel, UINT, UINT, *const GUID, *FeatureLevel, **IDeviceContextState) HRESULT,
//         CreateRasterizerState1: *const fn (*Interface, *const RasterizerDesc1, **IRasterizerState1) HRESULT,
//         GetImmediateContext1: *const fn (*Interface, **IDeviceContext1) void,
//         OpenSharedResource1: *const fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
//         OpenSharedResourceByName: *const fn (*Interface, LPCWSTR, DWORD, *const GUID, **IResource) HRESULT,
//         CheckMultisampleQualityLevels1: *const fn (*Interface, DXGIFormat, UINT, UINT, *UINT) HRESULT,
//         CreateDeferredContext2: *const fn (*Interface, UINT, **IDeviceContext2) HRESULT,
//         GetImmediateContext2: *const fn (*Interface, **IDeviceContext2) HRESULT,
//         GetResourceTiling: *const fn (*Interface, *IResource, *UINT, *PackedMipDesc, *TileShape, *UINT, UINT, *SubresourceTiling) void,
//         CreateDeferredContext3: *const fn (*Interface, UINT, **IDeviceContext3) HRESULT,
//         CreateQuery1: *const fn (*Interface, *const QueryDesc1, ?**IQuery) HRESULT,
//         CreateRasterizerState2: *const fn (*Interface, *RasterizerDesc2, ?**IRasterizerState2) HRESULT,
//         CreateRenderTargetView1: *const fn (*Interface, ?*const RenderTargetViewDesc1, ?**IRenderTargetView1) HRESULT,
//         CreateShaderResourceView1: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc1, ?**IShaderResourceView1) HRESULT,
//         CreateTexture2D1: *const fn (*Interface, *const Texture2DDesc1, ?*const SubresourceData, ?**ITexture2D1) HRESULT,
//         CreateTexture3D1: *const fn (*Interface, *const Texture3DDesc1, ?*const SubresourceData, ?**ITexture3D1) HRESULT,
//         CreateUnorderedAccessView1: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc1, ?**IUnorderedAccessView1) HRESULT,
//         GetImmediateContext3: *const fn (*Interface, **IDeviceContext3) HRESULT,
//         ReadFromSubresource: *const fn (*Interface, [*]BYTE, UINT, UINT, *IResource, UINT, *const Box) void,
//         WriteToSubresource: *const fn (*Interface, *IResource, UINT, *const Box, [*]const BYTE, UINT, UINT) void,
//         RegisterDeviceRemovedEvent: *const fn (*Interface, HANDLE, *DWORD) HRESULT,
//         UnregisterDeviceRemoved: *const fn (*Interface, DWORD) void,
//     };

//     lpVtbl: *VTable,
// };

// pub const IDevice5 = extern struct {
//     const Interface = @This();

//     pub const VTable = extern struct {
//         QueryInterface: *const fn (*Interface, *const GUID, *?*anyopaque) HRESULT,
//         AddRef: *const fn (*Interface) ULONG,
//         Release: *const fn (*Interface) ULONG,
//         CreateBuffer: *const fn (*Interface, *const BufferDesc, ?*const SubresourceData, ?**IBuffer) HRESULT,
//         CreateTexture1D: *const fn (*Interface, *const Texture1DDesc, ?*const SubresourceData, ?**ITexture1D) HRESULT,
//         CreateTexture2D: *const fn (*Interface, *const Texture2DDesc, ?*const SubresourceData, ?**ITexture2D) HRESULT,
//         CreateTexture3D: *const fn (*Interface, *const Texture3DDesc, ?*const SubresourceData, ?**ITexture3D) HRESULT,
//         CreateShaderResourceView: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IShaderResourceView) HRESULT,
//         CreateUnorderedAccessView: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IUnorderedAccessView) HRESULT,
//         CreateRenderTargetView: *const fn (*Interface, *IResource, ?*const RenderTargetViewDesc, ?**IRenderTargetView) HRESULT,
//         CreateDepthStencilView: *const fn (*Interface, *IResource, ?*const DepthStencilDesc, ?**IDepthStencilView) HRESULT,
//         CreateInputLayout: *const fn (*Interface, *const InputElementDesc, UINT, [*]const BYTE, SIZE_T, ?**IInputLayout) HRESULT,
//         CreateVertexShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IVertexShader) HRESULT,
//         CreateGeometryShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
//         CreateGeometryShaderWithStreamOutput: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*const SODeclarationEntry, UINT, *const UINT, UINT, UINT, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
//         CreatePixelShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IPixelShader) HRESULT,
//         CreateHullShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, **IHullShader) HRESULT,
//         CreateDomainShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IDomainShader) HRESULT,
//         CreateComputeShader: *const fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IComputeShader) HRESULT,
//         CreateClassLinkage: *const fn (*Interface, **IClassLinkage) HRESULT,
//         CreateBlendState: *const fn (*Interface, *const BlendDesc, **IBlendState) HRESULT,
//         CreateDepthStencilState: *const fn (*Interface, *const DepthStencilDesc, **IDepthStencilState) HRESULT,
//         CreateRasterizerState: *const fn (*Interface, *const RasterizerDesc, **IRasterizerState) HRESULT,
//         CreateSamplerState: *const fn (*Interface, *const SamplerDesc, **ISamplerState) HRESULT,
//         CreateQuery: *const fn (*Interface, *const QueryDesc, **IQuery) HRESULT,
//         CreatePredicate: *const fn (*Interface, *const QueryDesc, **IPredicate) HRESULT,
//         CreateCounter: *const fn (*Interface, *const CounterDesc, **ICounter) HRESULT,
//         CreateDeferredContext: *const fn (*Interface, UINT, **InterfaceContext) HRESULT,
//         OpenSharedResource: *const fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
//         CheckFormatSupport: *const fn (*Interface, DXGIFormat, *UINT) HRESULT,
//         CheckMultisampleQualityLevels: *const fn (*Interface, DXGIFormat, UINT, *UINT) HRESULT,
//         CheckCounterInfo: *const fn (*Interface, *CounterInfo) void,
//         CheckCounter: *const fn (*Interface, *const CounterDesc, *CounterType, *UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT) HRESULT,
//         CheckFeatureSupport: *const fn (*Interface, Feature, [*]BYTE, UINT) HRESULT,
//         GetPrivateData: *const fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
//         SetPrivateData: *const fn (*Interface, *const GUID, UINT, [*]const BYTE) HRESULT,
//         SetPrivateDataInterface: *const fn (*Interface, *const GUID, *const IUnknown) HRESULT,
//         GetFeatureLevel: *const fn (*Interface) FeatureLevel,
//         GetCreationFlags: *const fn (*Interface) UINT,
//         GetDeviceRemovedReason: *const fn (*Interface) HRESULT,
//         GetImmediateContext: *const fn (*Interface, **InterfaceContext) void,
//         SetExceptionMode: *const fn (*Interface, UINT) HRESULT,
//         GetExceptionMode: *const fn (*Interface) UINT,
//         CreateBlendState1: *const fn (*Interface, *const BlendDesc1, **IBlendState1) HRESULT,
//         CreateDeferredContext1: *const fn (*Interface, UINT, **IDeviceContext1) HRESULT,
//         CreateDeviceContextState: *const fn (*Interface, UINT, [*]const FeatureLevel, UINT, UINT, *const GUID, *FeatureLevel, **IDeviceContextState) HRESULT,
//         CreateRasterizerState1: *const fn (*Interface, *const RasterizerDesc1, **IRasterizerState1) HRESULT,
//         GetImmediateContext1: *const fn (*Interface, **IDeviceContext1) void,
//         OpenSharedResource1: *const fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
//         OpenSharedResourceByName: *const fn (*Interface, LPCWSTR, DWORD, *const GUID, **IResource) HRESULT,
//         CheckMultisampleQualityLevels1: *const fn (*Interface, DXGIFormat, UINT, UINT, *UINT) HRESULT,
//         CreateDeferredContext2: *const fn (*Interface, UINT, **IDeviceContext2) HRESULT,
//         GetImmediateContext2: *const fn (*Interface, **IDeviceContext2) HRESULT,
//         GetResourceTiling: *const fn (*Interface, *IResource, *UINT, *PackedMipDesc, *TileShape, *UINT, UINT, *SubresourceTiling) void,
//         CreateDeferredContext3: *const fn (*Interface, UINT, **IDeviceContext3) HRESULT,
//         CreateQuery1: *const fn (*Interface, *const QueryDesc1, ?**IQuery) HRESULT,
//         CreateRasterizerState2: *const fn (*Interface, *RasterizerDesc2, ?**IRasterizerState2) HRESULT,
//         CreateRenderTargetView1: *const fn (*Interface, ?*const RenderTargetViewDesc1, ?**IRenderTargetView1) HRESULT,
//         CreateShaderResourceView1: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc1, ?**IShaderResourceView1) HRESULT,
//         CreateTexture2D1: *const fn (*Interface, *const Texture2DDesc1, ?*const SubresourceData, ?**ITexture2D1) HRESULT,
//         CreateTexture3D1: *const fn (*Interface, *const Texture3DDesc1, ?*const SubresourceData, ?**ITexture3D1) HRESULT,
//         CreateUnorderedAccessView1: *const fn (*Interface, *IResource, ?*const ShaderResourceViewDesc1, ?**IUnorderedAccessView1) HRESULT,
//         GetImmediateContext3: *const fn (*Interface, **IDeviceContext3) HRESULT,
//         ReadFromSubresource: *const fn (*Interface, [*]BYTE, UINT, UINT, *IResource, UINT, *const Box) void,
//         WriteToSubresource: *const fn (*Interface, *IResource, UINT, *const Box, [*]const BYTE, UINT, UINT) void,
//         RegisterDeviceRemovedEvent: *const fn (*Interface, HANDLE, *DWORD) HRESULT,
//         UnregisterDeviceRemoved: *const fn (*Interface, DWORD) void,
//         CreateFence: *const fn (*Interface, UINT64, FenceFlag, *const GUID, **IFence) HRESULT,
//         OpenSharedFence: *const fn (*Interface, HANDLE, *const GUID, **IFence) HRESULT,
//     };

//     lpVtbl: *VTable,
// };

// pub const IDeviceChild = extern struct {
//     const Interface = @This();

//     pub const VTable = extern struct {
//         QueryInterface: *const fn (*Interface, *const GUID, *?*anyopaque) HRESULT,
//         AddRef: *const fn (*Interface) win32.ULONG,
//         Release: *const fn (*Interface) win32.ULONG,
//         GetDevice: *const fn (*Interface, **IDevice) void,
//         GetPrivateData: *const fn (*Interface, *const GUID, *win32.UINT, [*]win32.BYTE) HRESULT,
//         SetPrivateData: *const fn (*Interface, *const GUID, win32.UINT, ?[*]const win32.BYTE) HRESULT,
//         SetPrivateDataInterface: *const fn (*Interface, *const GUID, *const win32.IUnknown) HRESULT,
//     };

//     lpVtbl: *VTable,
// };

// pub const IUnknown = extern struct {
//     const Interface = @This();

//     pub const VTable = extern struct {
//         QueryInterface: *const fn (*Interface, *const GUID, *?*anyopaque) HRESULT,
//         AddRef: *const fn (*Interface) ULONG,
//         Release: *const fn (*Interface) ULONG,
//     };

//     lpVtbl: *VTable,
// };

// pub const BlendDesc = extern struct {
//     AlphaToCoverageEnable: BOOL,
//     IndependentBlendEnable: BOOL,
//     RenderTarget: [8]RenderTargetBlendDesc,
// };

// pub const BlendDesc1 = extern struct {
//     AlphaToCoverageEnable: BOOL,
//     IndependentBlendEnable: BOOL,
//     RenderTarget: [8]RenderTargetBlendDesc1,
// };

// pub const Box = extern struct {
//     left: UINT,
//     top: UINT,
//     front: UINT,
//     right: UINT,
//     bottom: UINT,
//     back: UINT,
// };

// pub const CounterDesc = extern struct {
//     Counter: Counter,
//     MiscFlags: UINT,
// };

// pub const CounterInfo = extern struct {
//     LastDeviceDependentCounter: Counter,
//     NumSimultaneousCounters: UINT,
//     NumDetectableParallelUnits: UINT8,
// };

// pub const DepthStencilDesc = extern struct {
//     DepthEnable: BOOL,
//     DepthWriteMask: DepthWriteMask,
//     DepthFunc: ComparisonFunc,
//     StencilEnable: BOOL,
//     StencilReadMask: UINT8,
//     StencilWriteMask: UINT8,
//     FrontFace: DepthStencilOpDesc,
//     BackFace: DepthStencilOpDesc,
// };

// pub const DepthStencilOpDesc = extern struct {
//     StencilFailOp: StencilOp,
//     StencilDepthFailOp: StencilOp,
//     StencilPassOp: StencilOp,
//     StencilFunc: ComparisonFunc,
// };

// pub const DrawIndexedInstancedIndirectArgs = extern struct {
//     IndexCountPerInstance: UINT,
//     InstanceCount: UINT,
//     StartIndexLocation: UINT,
//     BaseVertexLocation: INT,
//     StartInstanceLocation: UINT,
// };

// pub const DrawInstancedIndirectArgs = extern struct {
//     VertexCountPerInstance: UINT,
//     InstanceCount: UINT,
//     StartVertexLocation: UINT,
//     StartInstanceLocation: UINT,
// };

// pub const FeatureDataArchitectureInfo = extern struct {
//     TileBasedDeferredRenderer: BOOL,
// };

// pub const FeatureDataD3D9Options = extern struct {
//     FullNonPow2TextureSupport: BOOL,
// };

// pub const FeatureDataD3D9Options1 = extern struct {
//     FullNonPow2TextureSupported: BOOL,
//     DepthAsTextureWithLessEqualComparisonFilterSupported: BOOL,
//     SimpleInstancingSupported: BOOL,
//     TextureCubeFaceRenderTargetWithNonCubeDepthStencilSupported: BOOL,
// };

// pub const FeatureDataD3D9ShadowSupport = extern struct {
//     SupportsDepthAsTextureWithLessEqualComparisonFilter: BOOL,
// };

// pub const FeatureDataD3D9SimpleInstancingSupport = extern struct {
//     SimpleInstancingSupported: BOOL,
// };

// pub const FeatureDataD3D10XHardwareOptions = extern struct {
//     ComputeShadersPlusRawAndStructuredBuffersViaShader4X: BOOL,
// };

// pub const FeatureDataD3D11Options = extern struct {
//     OutputMergerLogicOp: BOOL,
//     UAVOnlyRenderingForcedSampleCount: BOOL,
//     DiscardAPIsSeenByDriver: BOOL,
//     FlagsForUpdateAndCopySeenByDriver: BOOL,
//     ClearView: BOOL,
//     CopyWithOverlap: BOOL,
//     ConstantBufferPartialUpdate: BOOL,
//     ConstantBufferOffsetting: BOOL,
//     MapNoOverwriteOnDynamicConstantBuffer: BOOL,
//     MapNoOverwriteOnDynamicBufferSRV: BOOL,
//     MultisampleRTVWithForcedSampleCountOne: BOOL,
//     SAD4ShaderInstructions: BOOL,
//     ExtendedDoublesShaderInstructions: BOOL,
//     ExtendedResourceSharing: BOOL,
// };

// pub const FeatureDataD3D11Options1 = extern struct {
//     TiledResourcesTier: TiledResourcesTier,
//     MinMaxFiltering: BOOL,
//     ClearViewAlsoSupportsDepthOnlyFormats: BOOL,
//     MapOnDefaultBuffers: BOOL,
// };

// pub const FeatureDataD3D11Options2 = extern struct {
//     PSSpecifiedStencilRefSupported: BOOL,
//     TypedUAVLoadAdditionalFormats: BOOL,
//     ROVsSupported: BOOL,
//     ConservativeRasterizationTier: ConservativeRasterizationTier,
//     TiledResourcesTier: TiledResourcesTier,
//     MapOnDefaultTextures: BOOL,
//     StandardSwizzle: BOOL,
//     UnifiedMemoryArchitecture: BOOL,
// };

// pub const FeatureDataD3D11Options3 = extern struct {
//     VPAndRTArrayIndexFromAnyShaderFeedingRasterizer: BOOL,
// };

// pub const FeatureDataD3D11Options4 = extern struct {
//     ExtendedNV12SharedTextureSupported: BOOL,
// };

// pub const FeatureDataDoubles = extern struct {
//     DoublePrecisionFloatShaderOps: BOOL,
// };

// pub const FeatureDataFormatSupport = struct {
//     InFormat: DXGIFormat,
//     OutFormatSupport: UINT,
// };

// pub const FeatureDataFormatSupport2 = struct {
//     InFormat: DXGIFormat,
//     OutFormatSupport2: UINT,
// };

// pub const FeatureDataGPUVirtualAddressSupport = extern struct {
//     MaxGPUVirtualAddressBitsPerProcess: UINT,
//     MaxGPUVirtualAddressBitsPerResource: UINT,
// };

// pub const FeatureDataMarketSupport = extern struct {
//     Profile: BOOL,
// };

// pub const FeatureDataShaderCache = extern struct {
//     SupportFlags: UINT,
// };

// pub const FeatureDataShaderMinPrecisionSupport = extern struct {
//     PixelShaderMinPrecision: UINT,
//     AllOtherShaderStagesMinPrecision: UINT,
// };

// pub const FeatureDataThreading = extern struct {
//     DriverConcurrentCreates: BOOL,
//     DriverCommandLists: BOOL,
// };

// pub const InputeElementDesc = extern struct {
//     SemanticName: LPCSTR,
//     SemanticIndex: UINT,
//     Format: DXGIFormat,
//     InputSlot: UINT,
//     AlignedByteOffset: UINT,
//     InputSlotClass: InputClassification,
//     InstanceDataStepRate: UINT,
// };

// pub const QueryPipelineStatistics = extern struct {
//     IAVertices: UINT64,
//     IAPrimitives: UINT64,
//     VSInvocations: UINT64,
//     GSInvocations: UINT64,
//     GSPrimitives: UINT64,
//     CInvocations: UINT64,
//     CPrimitives: UINT64,
//     PSInvocations: UINT64,
//     HSInvocations: UINT64,
//     DSInvocations: UINT64,
//     CSInvocations: UINT64,
// };

// pub const QueryDataSOStatistics = extern struct {
//     NumPrimitivesWritten: UINT64,
//     PrimitivesStorageNeeded: UINT64,
// };

// pub const QueryDataTimestampDisjoint = extern struct {
//     Frequency: UINT64,
//     Disjoint: BOOL,
// };

// pub const QueryDesc = extern struct {
//     Query: Query,
//     MiscFlags: UINT,
// };

// pub const RasterizerDesc = extern struct {
//     FillMode: FillMode,
//     CullMode: CullMode,
//     FrontCounterClockwise: BOOL,
//     DepthBias: INT,
//     DepthBiasClamp: FLOAT,
//     SlopeScaledDepthBias: FLOAT,
//     DepthClipEnable: BOOL,
//     ScissorEnable: BOOL,
//     MultisampleEnable: BOOL,
//     AntialiasedLineEnable: BOOL,
// };

// pub const Rect = extern struct {
//     left: LONG,
//     top: LONG,
//     right: LONG,
//     bottom: LONG,
// };

// pub const RenderTargetBlendDesc = extern struct {
//     BlendEnable: BOOL,
//     SrcBlend: Blend,
//     DestBlend: Blend,
//     BlendOp: BlendOp,
//     SrcBlendAlpha: Blend,
//     DestBlendAlpha: Blend,
//     BlendOpAlpha: BlendOp,
//     RenderTargetWriteMask: UINT8,
// };

// pub const RenderTargetBlendDesc1 = extern struct {
//     BlendEnable: BOOL,
//     LogicOpEnable: BOOL,
//     SrcBlend: Blend,
//     DestBlend: Blend,
//     BlendOp: BlendOp,
//     SrcBlendAlpha: Blend,
//     DestBlendAlpha: Blend,
//     BlendOpAlpha: BlendOp,
//     LogicOp: LogicOp,
//     RenderTargetWriteMask: UINT8,
// };

// pub const SamplerDesc = extern struct {
//     Filter: Filter,
//     AddressU: TextureAddressMode,
//     AddressV: TextureAddressMode,
//     AddressW: TextureAddressMode,
//     MipLODBias: FLOAT,
//     MaxAnisotropy: UINT,
//     ComparisonFunc: ComparisonFunc,
//     BorderColor: [4]FLOAT,
//     MinLOD: FLOAT,
//     MaxLOD: FLOAT,
// };

// pub const SODeclarationEntry = extern struct {
//     Stream: UINT,
//     SemanticName: LPCSTR,
//     SemanticIndex: UINT,
//     StartComponent: BYTE,
//     ComponentCount: BYTE,
//     OutputSlot: BYTE,
// };

// pub const Viewport = extern struct {
//     TopLeftX: FLOAT,
//     TopLeftY: FLOAT,
//     Width: FLOAT,
//     Height: FLOAT,
//     MinDepth: FLOAT,
//     MaxDepth: FLOAT,
// };
