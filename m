Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D4F496799
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jan 2022 22:53:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3250760FD4;
	Fri, 21 Jan 2022 21:53:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PCM9iG7sEwtX; Fri, 21 Jan 2022 21:53:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BCBE60F0A;
	Fri, 21 Jan 2022 21:53:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: by ash.osuosl.org (Postfix)
 id 7AD221C1162; Fri, 21 Jan 2022 21:53:33 +0000 (UTC)
Date: Fri, 21 Jan 2022 21:53:33 +0000 (UTC)
From: MAILER-DAEMON@osuosl.org (Mail Delivery System)
Subject: Successful Mail Delivery Report
To: devel@linuxdriverproject.org
Auto-Submitted: auto-replied
MIME-Version: 1.0
Message-Id: <20220121215333.7AD221C1162@ash.osuosl.org>
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
Content-Type: multipart/mixed; boundary="===============2591138239925256547=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a MIME-encapsulated message.

--===============2591138239925256547==
Content-Type: multipart/report; report-type=delivery-status;
	boundary="3F0C11BF30C.1642802013/ash.osuosl.org"
Content-Transfer-Encoding: 7bit

This is a MIME-encapsulated message.

--3F0C11BF30C.1642802013/ash.osuosl.org
Content-Description: Notification
Content-Type: text/plain; charset=us-ascii

This is the mail system at host ash.osuosl.org.

Your message was successfully delivered to the destination(s)
listed below. If the message was delivered to mailbox you will
receive no further notifications. Otherwise you may still receive
notifications of mail delivery errors from other systems.

                   The mail system

<devel@linuxdriverproject.org>: alias expanded

--3F0C11BF30C.1642802013/ash.osuosl.org
Content-Description: Delivery report
Content-Type: message/delivery-status

Reporting-MTA: dns; ash.osuosl.org
X-Postfix-Queue-ID: 3F0C11BF30C
X-Postfix-Sender: rfc822; devel@linuxdriverproject.org
Arrival-Date: Fri, 21 Jan 2022 21:53:33 +0000 (UTC)

Final-Recipient: rfc822; devel@linuxdriverproject.org
Original-Recipient: rfc822;devel@linuxdriverproject.org
Action: expanded
Status: 2.0.0
Diagnostic-Code: X-Postfix; alias expanded

--3F0C11BF30C.1642802013/ash.osuosl.org
Content-Description: Message Headers
Content-Type: text/rfc822-headers

Return-Path: <devel@linuxdriverproject.org>
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by ash.osuosl.org (Postfix) with ESMTP id 3F0C11BF30C
	for <devel@linuxdriverproject.org>; Fri, 21 Jan 2022 21:53:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D0BE81465
	for <devel@linuxdriverproject.org>; Fri, 21 Jan 2022 21:53:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: YES
X-Spam-Score: 20.296
X-Spam-Level: ********************
X-Spam-Status: Yes, score=20.296 tagged_above=-999 required=5
	tests=[BAYES_20=-0.001, GOOG_STO_EMAIL_PHISH=2.968,
	GOOG_STO_NOIMG_HTML=2.996, HTML_FONT_TINY_NORDNS=1.498,
	HTML_MESSAGE=0.001, MIME_HTML_MOSTLY=0.1, MPART_ALT_DIFF=0.79,
	RCVD_IN_BL_SPAMCOP_NET=1.347, RCVD_IN_MSPIKE_BL=0.001,
	RCVD_IN_MSPIKE_L4=0.001, RCVD_IN_PSBL=2.7, RCVD_IN_SBL_CSS=3.335,
	RCVD_IN_VALIDITY_RPBL=1.31, RCVD_IN_XBL=0.375, RDNS_NONE=0.793,
	SPF_HELO_SOFTFAIL=0.732, SPF_SOFTFAIL=0.665, SUBJ_ALL_CAPS=0.5,
	TO_EQ_FM_DIRECT_MX=0.185] autolearn=no autolearn_force=no
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3wmH5wwB5CkF for <devel@linuxdriverproject.org>;
	Fri, 21 Jan 2022 21:53:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from linuxdriverproject.org (unknown [185.222.57.88])
	by smtp1.osuosl.org (Postfix) with ESMTP id 003DF80C04
	for <devel@linuxdriverproject.org>; Fri, 21 Jan 2022 21:53:31 +0000 (UTC)
From: Server Administrator<devel@linuxdriverproject.org>
To: devel@linuxdriverproject.org
Subject: EMAIL ACCOUNT CONFIRMATION AND UPGRADE.
Date: 21 Jan 2022 22:53:30 +0100
Message-ID: <20220121225330.66EC3B84D53B645F@linuxdriverproject.org>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0012_E86C2058.E311B5F1"

--3F0C11BF30C.1642802013/ash.osuosl.org--

--===============2591138239925256547==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2591138239925256547==--
