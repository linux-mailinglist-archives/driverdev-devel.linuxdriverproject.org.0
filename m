Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEB950E2CC
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Apr 2022 16:14:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D100640571;
	Mon, 25 Apr 2022 14:14:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iARDALIFB7Hw; Mon, 25 Apr 2022 14:14:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84C92404FD;
	Mon, 25 Apr 2022 14:14:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: by ash.osuosl.org (Postfix)
 id 8A9861BF989; Mon, 25 Apr 2022 14:14:33 +0000 (UTC)
Date: Mon, 25 Apr 2022 14:14:33 +0000 (UTC)
From: MAILER-DAEMON@osuosl.org (Mail Delivery System)
Subject: Successful Mail Delivery Report
To: devel@linuxdriverproject.org
Auto-Submitted: auto-replied
MIME-Version: 1.0
Message-Id: <20220425141433.8A9861BF989@ash.osuosl.org>
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
Content-Type: multipart/mixed; boundary="===============5046495579594233687=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a MIME-encapsulated message.

--===============5046495579594233687==
Content-Type: multipart/report; report-type=delivery-status;
	boundary="4E86D1BF398.1650896073/ash.osuosl.org"
Content-Transfer-Encoding: 7bit

This is a MIME-encapsulated message.

--4E86D1BF398.1650896073/ash.osuosl.org
Content-Description: Notification
Content-Type: text/plain; charset=us-ascii

This is the mail system at host ash.osuosl.org.

Your message was successfully delivered to the destination(s)
listed below. If the message was delivered to mailbox you will
receive no further notifications. Otherwise you may still receive
notifications of mail delivery errors from other systems.

                   The mail system

<devel@linuxdriverproject.org>: alias expanded

--4E86D1BF398.1650896073/ash.osuosl.org
Content-Description: Delivery report
Content-Type: message/delivery-status

Reporting-MTA: dns; ash.osuosl.org
X-Postfix-Queue-ID: 4E86D1BF398
X-Postfix-Sender: rfc822; devel@linuxdriverproject.org
Arrival-Date: Mon, 25 Apr 2022 14:14:33 +0000 (UTC)

Final-Recipient: rfc822; devel@linuxdriverproject.org
Original-Recipient: rfc822;devel@linuxdriverproject.org
Action: expanded
Status: 2.0.0
Diagnostic-Code: X-Postfix; alias expanded

--4E86D1BF398.1650896073/ash.osuosl.org
Content-Description: Message Headers
Content-Type: text/rfc822-headers

Return-Path: <devel@linuxdriverproject.org>
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by ash.osuosl.org (Postfix) with ESMTP id 4E86D1BF398
	for <devel@linuxdriverproject.org>; Mon, 25 Apr 2022 14:14:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4BDA08137D
	for <devel@linuxdriverproject.org>; Mon, 25 Apr 2022 14:14:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: YES
X-Spam-Score: 19.24
X-Spam-Level: *******************
X-Spam-Status: Yes, score=19.24 tagged_above=-999 required=5
	tests=[BAYES_50=0.8, GOOG_STO_EMAIL_PHISH=2.968,
	GOOG_STO_NOIMG_HTML=2.996, HTML_MESSAGE=0.001, MIME_HTML_MOSTLY=0.1,
	MPART_ALT_DIFF=0.79, RCVD_IN_BL_SPAMCOP_NET=1.347,
	RCVD_IN_MSPIKE_BL=0.001, RCVD_IN_MSPIKE_ZBI=0.001, RCVD_IN_PSBL=2.7,
	RCVD_IN_SBL=0.141, RCVD_IN_SBL_CSS=3.335, RCVD_IN_VALIDITY_RPBL=1.31,
	RCVD_IN_XBL=0.375, RDNS_NONE=0.793, SPF_HELO_SOFTFAIL=0.732,
	SPF_SOFTFAIL=0.665, TO_EQ_FM_DIRECT_MX=0.185]
	autolearn=no autolearn_force=no
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j2OboQ3mkVap for <devel@linuxdriverproject.org>;
	Mon, 25 Apr 2022 14:14:32 +0000 (UTC)
X-Greylist: delayed 12:20:15 by SQLgrey-1.8.0
Received: from linuxdriverproject.org (unknown [45.137.22.78])
	by smtp1.osuosl.org (Postfix) with ESMTP id 311148134C
	for <devel@linuxdriverproject.org>; Mon, 25 Apr 2022 14:14:31 +0000 (UTC)
Reply-To: Server Administrator <>
From: Server Administrator <devel@linuxdriverproject.org>
To: devel@linuxdriverproject.org
Subject: Email De-activation 950426
Date: 25 Apr 2022 16:14:30 +0200
Message-ID: <20220425161430.8A14C11D1674850E@linuxdriverproject.org>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0012_91DC5C37.036D264D"

--4E86D1BF398.1650896073/ash.osuosl.org--

--===============5046495579594233687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5046495579594233687==--
