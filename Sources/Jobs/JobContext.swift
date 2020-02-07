import Vapor

/// The context for a job
public struct JobContext {
    
    /// The application in which the Job is running
    public let app: Application
    
    /// The name of the queue
    public let queueName: JobsQueueName
    
    /// The configuration object
    public let configuration: JobsConfiguration
    
    /// The logger object
    public let logger: Logger
    
    /// An event loop to run the process on
    public let eventLoop: EventLoop
    
    /// Creates a new JobContext
    /// - Parameters:
    ///   - queueName: The name of the queue
    ///   - configuration: The configuration object
    ///   - logger: The logger object
    ///   - eventLoop: An event loop to run the process on
    public init(
        app: Application,
        queueName: JobsQueueName,
        configuration: JobsConfiguration,
        logger: Logger,
        on eventLoop: EventLoop
    ) {
        self.app = app
        self.queueName = queueName
        self.configuration = configuration
        self.logger = logger
        self.eventLoop = eventLoop
    }
}
