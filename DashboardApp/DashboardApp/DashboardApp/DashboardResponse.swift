import Foundation

struct DashboardResponse: Codable {
    let status: Bool
    let statusCode: Int
    let message: String
    let data: DashboardData
}

struct DashboardData: Codable {
    let recentLinks: [Link]
    let topLinks: [Link]
    let overallUrlChart: [String: Int]
    
    enum CodingKeys: String, CodingKey {
        case recentLinks = "recent_links"
        case topLinks = "top_links"
        case overallUrlChart = "overall_url_chart"
    }
}

struct Link: Codable, Identifiable {
    let id = UUID()
    let urlId: Int
    let webLink: String
    let title: String
    let originalImage: String
    let totalClicks: Int
    
    enum CodingKeys: String, CodingKey {
        case urlId = "url_id"
        case webLink = "web_link"
        case title
        case originalImage = "original_image"
        case totalClicks = "total_clicks"
    }
}
