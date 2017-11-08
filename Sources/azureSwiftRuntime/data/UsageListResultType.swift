import Foundation
public struct UsageListResultType : UsageListResultTypeProtocol {
    public var value: [UsageTypeProtocol?]?

    enum CodingKeys: String, CodingKey {
        case value = "value"
    }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    value = try container.decode([UsageType?]?.self, forKey: .value)
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(value as! [UsageType?]?, forKey: .value)
  }
}
