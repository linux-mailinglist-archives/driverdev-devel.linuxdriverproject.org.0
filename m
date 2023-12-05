Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 134CA804507
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Dec 2023 03:35:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC10881253;
	Tue,  5 Dec 2023 02:35:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC10881253
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rn7DArhVCodp; Tue,  5 Dec 2023 02:35:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CBDC80EBA;
	Tue,  5 Dec 2023 02:35:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7CBDC80EBA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: by ash.osuosl.org (Postfix)
 id 2DF221BF980; Tue,  5 Dec 2023 02:35:26 +0000 (UTC)
Date: Tue,  5 Dec 2023 02:35:26 +0000 (UTC)
From: MAILER-DAEMON@osuosl.org (Mail Delivery System)
Subject: Successful Mail Delivery Report
To: devel@linuxdriverproject.org
Auto-Submitted: auto-replied
MIME-Version: 1.0
Message-Id: <20231205023526.2DF221BF980@ash.osuosl.org>
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2541560427978510576=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a MIME-encapsulated message.

--===============2541560427978510576==
Content-Type: multipart/report; report-type=delivery-status;
	boundary="E30D31BF2F7.1701743726/ash.osuosl.org"
Content-Transfer-Encoding: 7bit

This is a MIME-encapsulated message.

--E30D31BF2F7.1701743726/ash.osuosl.org
Content-Description: Notification
Content-Type: text/plain; charset=us-ascii

This is the mail system at host ash.osuosl.org.

Your message was successfully delivered to the destination(s)
listed below. If the message was delivered to mailbox you will
receive no further notifications. Otherwise you may still receive
notifications of mail delivery errors from other systems.

                   The mail system

<devel@linuxdriverproject.org>: alias expanded

--E30D31BF2F7.1701743726/ash.osuosl.org
Content-Description: Delivery report
Content-Type: message/delivery-status

Reporting-MTA: dns; ash.osuosl.org
X-Postfix-Queue-ID: E30D31BF2F7
X-Postfix-Sender: rfc822; devel@linuxdriverproject.org
Arrival-Date: Tue,  5 Dec 2023 02:35:25 +0000 (UTC)

Final-Recipient: rfc822; devel@linuxdriverproject.org
Original-Recipient: rfc822;devel@linuxdriverproject.org
Action: expanded
Status: 2.0.0
Diagnostic-Code: X-Postfix; alias expanded

--E30D31BF2F7.1701743726/ash.osuosl.org
Content-Description: Message Headers
Content-Type: text/rfc822-headers

Return-Path: <devel@linuxdriverproject.org>
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by ash.osuosl.org (Postfix) with ESMTP id E30D31BF2F7
	for <devel@linuxdriverproject.org>; Tue,  5 Dec 2023 02:35:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9C7680EBA
	for <devel@linuxdriverproject.org>; Tue,  5 Dec 2023 02:35:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9C7680EBA
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: YES
X-Spam-Score: 20.648
X-Spam-Level: ********************
X-Spam-Status: Yes, score=20.648 tagged_above=-999 required=5
	tests=[BAYES_40=-0.001, FROM_IN_TO_AND_SUBJ=1,
	HTML_FONT_LOW_CONTRAST=0.001, HTML_MESSAGE=0.001,
	MIME_HTML_MOSTLY=0.1, NORDNS_LOW_CONTRAST=2.311,
	RCVD_IN_BL_SPAMCOP_NET=1.347, RCVD_IN_MSPIKE_BL=0.001,
	RCVD_IN_MSPIKE_L4=0.001, RCVD_IN_PBL=3.335, RCVD_IN_PSBL=2.7,
	RCVD_IN_RP_RNBL=0.001, RCVD_IN_SBL=0.141, RCVD_IN_SBL_CSS=3.335,
	RCVD_IN_VALIDITY_RPBL=1.31, RCVD_IN_XBL=0.375, RDNS_NONE=0.793,
	SPF_HELO_SOFTFAIL=0.732, SPF_SOFTFAIL=0.665, TO_EQ_FM_DIRECT_MX=2.5]
	autolearn=no autolearn_force=no
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GlDyn29V2Kkb for <devel@linuxdriverproject.org>;
	Tue,  5 Dec 2023 02:35:25 +0000 (UTC)
Received: from linuxdriverproject.org (unknown [141.98.10.87])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EAC980DA6
	for <devel@linuxdriverproject.org>; Tue,  5 Dec 2023 02:35:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EAC980DA6
From: Server Administrator<devel@linuxdriverproject.org>
To: devel@linuxdriverproject.org
Subject: Mailbox update for devel@linuxdriverproject.org !!!
Date: 5 Dec 2023 03:35:23 +0100
Message-ID: <20231205033523.FF444E09A8CD3DA1@linuxdriverproject.org>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0012_7B8F1563.F42DF872"

--E30D31BF2F7.1701743726/ash.osuosl.org--

--===============2541560427978510576==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2541560427978510576==--
