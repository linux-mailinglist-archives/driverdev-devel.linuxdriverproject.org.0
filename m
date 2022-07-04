Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E317156532A
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Jul 2022 13:21:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20C6460E0F;
	Mon,  4 Jul 2022 11:21:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20C6460E0F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nTrPxIR-ggr4; Mon,  4 Jul 2022 11:21:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABD4360737;
	Mon,  4 Jul 2022 11:21:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABD4360737
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: by ash.osuosl.org (Postfix)
 id A62C41BF9A4; Mon,  4 Jul 2022 11:21:02 +0000 (UTC)
Date: Mon,  4 Jul 2022 11:21:02 +0000 (UTC)
From: MAILER-DAEMON@osuosl.org (Mail Delivery System)
Subject: Successful Mail Delivery Report
To: devel@linuxdriverproject.org
Auto-Submitted: auto-replied
MIME-Version: 1.0
Message-Id: <20220704112102.A62C41BF9A4@ash.osuosl.org>
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
Content-Type: multipart/mixed; boundary="===============2212578507168309679=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a MIME-encapsulated message.

--===============2212578507168309679==
Content-Type: multipart/report; report-type=delivery-status;
	boundary="689D01BF375.1656933662/ash.osuosl.org"
Content-Transfer-Encoding: 7bit

This is a MIME-encapsulated message.

--689D01BF375.1656933662/ash.osuosl.org
Content-Description: Notification
Content-Type: text/plain; charset=us-ascii

This is the mail system at host ash.osuosl.org.

Your message was successfully delivered to the destination(s)
listed below. If the message was delivered to mailbox you will
receive no further notifications. Otherwise you may still receive
notifications of mail delivery errors from other systems.

                   The mail system

<devel@linuxdriverproject.org>: alias expanded

--689D01BF375.1656933662/ash.osuosl.org
Content-Description: Delivery report
Content-Type: message/delivery-status

Reporting-MTA: dns; ash.osuosl.org
X-Postfix-Queue-ID: 689D01BF375
X-Postfix-Sender: rfc822; devel@linuxdriverproject.org
Arrival-Date: Mon,  4 Jul 2022 11:21:02 +0000 (UTC)

Final-Recipient: rfc822; devel@linuxdriverproject.org
Original-Recipient: rfc822;devel@linuxdriverproject.org
Action: expanded
Status: 2.0.0
Diagnostic-Code: X-Postfix; alias expanded

--689D01BF375.1656933662/ash.osuosl.org
Content-Description: Message Headers
Content-Type: text/rfc822-headers

Return-Path: <devel@linuxdriverproject.org>
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by ash.osuosl.org (Postfix) with ESMTP id 689D01BF375
	for <devel@linuxdriverproject.org>; Mon,  4 Jul 2022 11:21:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43ABE8195C
	for <devel@linuxdriverproject.org>; Mon,  4 Jul 2022 11:21:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43ABE8195C
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: YES
X-Spam-Score: 18.898
X-Spam-Level: ******************
X-Spam-Status: Yes, score=18.898 tagged_above=-999 required=5
	tests=[BAYES_50=0.8, FSL_BULK_SIG=0.001, HTML_MESSAGE=0.001,
	MIME_HTML_MOSTLY=0.1, MPART_ALT_DIFF=0.79,
	RAZOR2_CF_RANGE_51_100=1.886, RAZOR2_CHECK=0.922,
	RCVD_IN_BL_SPAMCOP_NET=1.347, RCVD_IN_MSPIKE_H2=-0.001,
	RCVD_IN_PSBL=2.7, RCVD_IN_RP_RNBL=0.001, RCVD_IN_SBL=0.141,
	RCVD_IN_SBL_CSS=3.335, RCVD_IN_VALIDITY_RPBL=1.31, RCVD_IN_XBL=0.375,
	RDNS_NONE=0.793, SPF_HELO_SOFTFAIL=0.732, SPF_SOFTFAIL=0.665,
	SUBJ_ALL_CAPS=0.5, TO_EQ_FM_DIRECT_MX=2.5]
	autolearn=no autolearn_force=no
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 05ow5poamjoC for <devel@linuxdriverproject.org>;
	Mon,  4 Jul 2022 11:21:01 +0000 (UTC)
X-Greylist: delayed 14:10:17 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 002718184F
Received: from linuxdriverproject.org (unknown [45.137.22.91])
	by smtp1.osuosl.org (Postfix) with ESMTP id 002718184F
	for <devel@linuxdriverproject.org>; Mon,  4 Jul 2022 11:21:00 +0000 (UTC)
From: Server Administrator<devel@linuxdriverproject.org>
To: devel@linuxdriverproject.org
Subject: EMAIL ACCOUNT CONFIRMATION AND UPGRADE.
Date: 4 Jul 2022 13:20:58 +0200
Message-ID: <20220704132058.D158F77E169AFDC0@linuxdriverproject.org>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0012_F10A3A7E.AC479CB5"

--689D01BF375.1656933662/ash.osuosl.org--

--===============2212578507168309679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2212578507168309679==--
