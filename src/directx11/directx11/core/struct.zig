//
//  Copyright (c) 2019 emekoi
//
//  This library is free software; you can redistribute it and/or modify it
//  under the terms of the MIT license. See LICENSE for details.
//

const en = @import("enum.zig");
const t = @import("../../types.zig");

pub const BlendDesc = extern struct {
    AlphaToCoverageEnable: t.BOOL,
    IndependentBlendEnable: t.BOOL,
    RenderTarget: [8]RenderTargetBlendDesc,
};

pub const BlendDesc1 = extern struct {
    AlphaToCoverageEnable: t.BOOL,
    IndependentBlendEnable: t.BOOL,
    RenderTarget: [8]RenderTargetBlendDesc1,
};

pub const Box = extern struct {
    left: t.UINT,
    top: t.UINT,
    front: t.UINT,
    right: t.UINT,
    bottom: t.UINT,
    back: t.UINT,
};

pub const CounterDesc = extern struct {
    Counter: Counter,
    MiscFlags: t.UINT,
};

pub const CounterInfo = extern struct {
    LastDeviceDependentCounter: Counter,
    NumSimultaneousCounters: t.UINT,
    NumDetectableParallelUnits: t.UINT8,
};

pub const DepthStencilDesc = extern struct {
    DepthEnable: t.BOOL,
    DepthWriteMask: DepthWriteMask,
    DepthFunc: ComparisonFunc,
    StencilEnable: t.BOOL,
    StencilReadMask: t.UINT8,
    StencilWriteMask: t.UINT8,
    FrontFace: DepthStencilOpDesc,
    BackFace: DepthStencilOpDesc,
};

pub const DepthStencilOpDesc = extern struct {
    StencilFailOp: StencilOp,
    StencilDepthFailOp: StencilOp,
    StencilPassOp: StencilOp,
    StencilFunc: ComparisonFunc,
};

pub const DrawIndexedInstancedIndirectArgs = extern struct {
    IndexCountPerInstance: t.UINT,
    InstanceCount: t.UINT,
    StartIndexLocation: t.UINT,
    BaseVertexLocation: INT,
    StartInstanceLocation: t.UINT,
};

pub const DrawInstancedIndirectArgs = extern struct {
    VertexCountPerInstance: t.UINT,
    InstanceCount: t.UINT,
    StartVertexLocation: t.UINT,
    StartInstanceLocation: t.UINT,
};

pub const FeatureDataArchitectureInfo = extern struct {
    TileBasedDeferredRenderer: t.BOOL,
};

pub const FeatureDataD3D9Options = extern struct {
    FullNonPow2TextureSupport: t.BOOL,
};

pub const FeatureDataD3D9Options1 = extern struct {
    FullNonPow2TextureSupported: t.BOOL,
    DepthAsTextureWithLessEqualComparisonFilterSupported: t.BOOL,
    SimpleInstancingSupported: t.BOOL,
    TextureCubeFaceRenderTargetWithNonCubeDepthStencilSupported: t.BOOL,
};

pub const FeatureDataD3D9ShadowSupport = extern struct {
    SupportsDepthAsTextureWithLessEqualComparisonFilter: t.BOOL,
};

pub const FeatureDataD3D9SimpleInstancingSupport = extern struct {
    SimpleInstancingSupported: t.BOOL,
};

pub const FeatureDataD3D10XHardwareOptions = extern struct {
    ComputeShadersPlusRawAndStructuredBuffersViaShader4X: t.BOOL,
};

pub const FeatureDataD3D11Options = extern struct {
    OutputMergerLogicOp: t.BOOL,
    UAVOnlyRenderingForcedSampleCount: t.BOOL,
    DiscardAPIsSeenByDriver: t.BOOL,
    FlagsForUpdateAndCopySeenByDriver: t.BOOL,
    ClearView: t.BOOL,
    CopyWithOverlap: t.BOOL,
    ConstantBufferPartialUpdate: t.BOOL,
    ConstantBufferOffsetting: t.BOOL,
    MapNoOverwriteOnDynamicConstantBuffer: t.BOOL,
    MapNoOverwriteOnDynamicBufferSRV: t.BOOL,
    MultisampleRTVWithForcedSampleCountOne: t.BOOL,
    SAD4ShaderInstructions: t.BOOL,
    ExtendedDoublesShaderInstructions: t.BOOL,
    ExtendedResourceSharing: t.BOOL,
};

pub const FeatureDataD3D11Options1 = extern struct {
    TiledResourcesTier: TiledResourcesTier,
    MinMaxFiltering: t.BOOL,
    ClearViewAlsoSupportsDepthOnlyFormats: t.BOOL,
    MapOnDefaultBuffers: t.BOOL,
};

pub const FeatureDataD3D11Options2 = extern struct {
    PSSpecifiedStencilRefSupported: t.BOOL,
    TypedUAVLoadAdditionalFormats: t.BOOL,
    ROVsSupported: t.BOOL,
    ConservativeRasterizationTier: ConservativeRasterizationTier,
    TiledResourcesTier: TiledResourcesTier,
    MapOnDefaultTextures: t.BOOL,
    StandardSwizzle: t.BOOL,
    UnifiedMemoryArchitecture: t.BOOL,
};

pub const FeatureDataD3D11Options3 = extern struct {
    VPAndRTArrayIndexFromAnyShaderFeedingRasterizer: t.BOOL,
};

pub const FeatureDataD3D11Options4 = extern struct {
    ExtendedNV12SharedTextureSupported: t.BOOL,
};

pub const FeatureDataDoubles = extern struct {
    DoublePrecisiont.FLOATShaderOps: t.BOOL,
};

pub const FeatureDataFormatSupport = extern enum {
    InFormat: DXGIFormat,
    OutFormatSupport: t.UINT,
};

pub const FeatureDataFormatSupport2 = extern enum {
    InFormat: DXGIFormat,
    OutFormatSupport2: t.UINT,
};

pub const FeatureDataGPUVirtualAddressSupport = extern struct {
    MaxGPUVirtualAddressBitsPerProcess: t.UINT,
    MaxGPUVirtualAddressBitsPerResource: t.UINT,
};

pub const FeatureDataMarketSupport = extern struct {
    Profile: t.BOOL,
};

pub const FeatureDataShaderCache = extern struct {
    SupportFlags: t.UINT,
};

pub const FeatureDataShaderMinPrecisionSupport = extern struct {
    PixelShaderMinPrecision: t.UINT,
    AllOtherShaderStagesMinPrecision: t.UINT,
};

pub const FeatureDataThreading = extern struct {
    DriverConcurrentCreates: t.BOOL,
    DriverCommandLists: t.BOOL,
};

pub const InputeElementDesc = extern struct {
    SemanticName: t.LPCSTR,
    SemanticIndex: t.UINT,
    Format: DXGIFormat,
    InputSlot: t.UINT,
    AlignedByteOffset: t.UINT,
    InputSlotClass: InputClassification,
    InstanceDataStepRate: t.UINT,
};

pub const QueryPipelineStatistics = extern struct {
    IAVertices: t.UINT64,
    IAPrimitives: t.UINT64,
    VSInvocations: t.UINT64,
    GSInvocations: t.UINT64,
    GSPrimitives: t.UINT64,
    CInvocations: t.UINT64,
    CPrimitives: t.UINT64,
    PSInvocations: t.UINT64,
    HSInvocations: t.UINT64,
    DSInvocations: t.UINT64,
    CSInvocations: t.UINT64,
};

pub const QueryDataSOStatistics = extern struct {
    NumPrimitivesWritten: t.UINT64,
    PrimitivesStorageNeeded: t.UINT64,
};

pub const QueryDataTimestampDisjoint = extern struct {
    Frequency: t.UINT64,
    Disjoint: t.BOOL,
};

pub const QueryDesc = extern struct {
    Query: Query,
    MiscFlags: t.UINT,
};

pub const RasterizerDesc = extern struct {
    FillMode: FillMode,
    CullMode: CullMode,
    FrontCounterClockwise: t.BOOL,
    DepthBias: INT,
    DepthBiasClamp: t.FLOAT,
    SlopeScaledDepthBias: t.FLOAT,
    DepthClipEnable: t.BOOL,
    ScissorEnable: t.BOOL,
    MultisampleEnable: t.BOOL,
    AntialiasedLineEnable: t.BOOL,
};

pub const Rect = extern struct {
    left: t.LONG,
    top: t.LONG,
    right: t.LONG,
    bottom: t.LONG,
};

pub const RenderTargetBlendDesc = extern struct {
    BlendEnable: t.BOOL,
    SrcBlend: Blend,
    DestBlend: Blend,
    BlendOp: BlendOp,
    SrcBlendAlpha: Blend,
    DestBlendAlpha: Blend,
    BlendOpAlpha: BlendOp,
    RenderTargetWriteMask: t.UINT8,
};

pub const RenderTargetBlendDesc1 = extern struct {
    BlendEnable: t.BOOL,
    LogicOpEnable: t.BOOL,
    SrcBlend: Blend,
    DestBlend: Blend,
    BlendOp: BlendOp,
    SrcBlendAlpha: Blend,
    DestBlendAlpha: Blend,
    BlendOpAlpha: BlendOp,
    LogicOp: LogicOp,
    RenderTargetWriteMask: t.UINT8,
};

pub const SamplerDesc = extern struct {
    Filter: Filter,
    AddressU: TextureAddressMode,
    AddressV: TextureAddressMode,
    AddressW: TextureAddressMode,
    MipLODBias: t.FLOAT,
    MaxAnisotropy: t.UINT,
    ComparisonFunc: ComparisonFunc,
    BorderColor: [4]t.FLOAT,
    MinLOD: t.FLOAT,
    MaxLOD: t.FLOAT,
};

pub const SODeclarationEntry = extern struct {
    Stream: t.UINT,
    SemanticName: t.LPCSTR,
    SemanticIndex: t.UINT,
    StartComponent: BYTE,
    ComponentCount: BYTE,
    OutputSlot: BYTE,
};

pub const Viewport = extern struct {
    TopLeftX: t.FLOAT,
    TopLeftY: t.FLOAT,
    Width: t.FLOAT,
    Height: t.FLOAT,
    MinDepth: t.FLOAT,
    MaxDepth: t.FLOAT,
};
