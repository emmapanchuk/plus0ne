import * as React from 'react';
import Paper from '@material-ui/core/Paper';
import { connect } from "react-redux";
import { IStore } from "../reducers";
import CustomAvatar from "./Avatar";
const mapStateToProps = (state: IStore) => ({
    lightTheme: state.theme.light
});

export interface IBotMessageProps {
    message: string,
    lightTheme: boolean,
    avatarName: string
}
class BotMessage extends React.Component<IBotMessageProps, {}>{
    static defaultProps = {
        avatarName: "botCheck"
    };
    render(){
        return(
            <div className="message-container">
                <div className="message-avatar-container">
                    <CustomAvatar 
                        themeColor={`${this.props.lightTheme ? 'avatar-container-light' : 'avatar-container-dark'} ${this.props.avatarName==='bot'?'host-invite-avatar-dark':''}`}
                        avatarName={this.props.avatarName}
                    />
                </div>
                <Paper className={`message-content-container ${this.props.lightTheme ? 'message-content-light' : 'message-content-dark'}`}>
                    <span className="message-content" style={{'color':'white'}}>{ this.props.message }</span>
                </Paper>
            </div>
        );
    }
}

export default connect(mapStateToProps)(BotMessage);