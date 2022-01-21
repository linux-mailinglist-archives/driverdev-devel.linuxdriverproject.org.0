Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A1F496073
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jan 2022 15:07:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E953D416E2;
	Fri, 21 Jan 2022 14:07:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oBjFJXlvfWdn; Fri, 21 Jan 2022 14:07:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43C49416C8;
	Fri, 21 Jan 2022 14:07:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: by ash.osuosl.org (Postfix)
 id 8F5181C1162; Fri, 21 Jan 2022 14:07:08 +0000 (UTC)
Date: Fri, 21 Jan 2022 14:07:08 +0000 (UTC)
From: MAILER-DAEMON@osuosl.org (Mail Delivery System)
Subject: Successful Mail Delivery Report
To: devel@linuxdriverproject.org
Auto-Submitted: auto-replied
MIME-Version: 1.0
Message-Id: <20220121140708.8F5181C1162@ash.osuosl.org>
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
Content-Type: multipart/mixed; boundary="===============1260270540597386032=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a MIME-encapsulated message.

--===============1260270540597386032==
Content-Type: multipart/report; report-type=delivery-status;
	boundary="4E76D1BF31D.1642774028/ash.osuosl.org"
Content-Transfer-Encoding: 7bit

This is a MIME-encapsulated message.

--4E76D1BF31D.1642774028/ash.osuosl.org
Content-Description: Notification
Content-Type: text/plain; charset=us-ascii

This is the mail system at host ash.osuosl.org.

Your message was successfully delivered to the destination(s)
listed below. If the message was delivered to mailbox you will
receive no further notifications. Otherwise you may still receive
notifications of mail delivery errors from other systems.

                   The mail system

<devel@linuxdriverproject.org>: alias expanded

--4E76D1BF31D.1642774028/ash.osuosl.org
Content-Description: Delivery report
Content-Type: message/delivery-status

Reporting-MTA: dns; ash.osuosl.org
X-Postfix-Queue-ID: 4E76D1BF31D
X-Postfix-Sender: rfc822; devel@linuxdriverproject.org
Arrival-Date: Fri, 21 Jan 2022 14:07:08 +0000 (UTC)

Final-Recipient: rfc822; devel@linuxdriverproject.org
Original-Recipient: rfc822;devel@linuxdriverproject.org
Action: expanded
Status: 2.0.0
Diagnostic-Code: X-Postfix; alias expanded

--4E76D1BF31D.1642774028/ash.osuosl.org
Content-Description: Message Headers
Content-Type: text/rfc822-headers

Return-Path: <devel@linuxdriverproject.org>
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by ash.osuosl.org (Postfix) with ESMTP id 4E76D1BF31D
	for <devel@linuxdriverproject.org>; Fri, 21 Jan 2022 14:07:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3693C40604
	for <devel@linuxdriverproject.org>; Fri, 21 Jan 2022 14:07:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: YES
X-Spam-Score: 13.249
X-Spam-Level: *************
X-Spam-Status: Yes, score=13.249 tagged_above=-999 required=5
	tests=[BAYES_00=-1.9, HTML_MESSAGE=0.001, MIME_HTML_MOSTLY=0.1,
	MPART_ALT_DIFF=0.79, RCVD_IN_BL_SPAMCOP_NET=1.347,
	RCVD_IN_MSPIKE_BL=0.001, RCVD_IN_MSPIKE_L4=0.001, RCVD_IN_PSBL=2.7,
	RCVD_IN_RP_RNBL=1.31, RCVD_IN_SBL_CSS=3.335, RCVD_IN_XBL=0.375,
	RDNS_NONE=0.793, SPF_HELO_SOFTFAIL=0.732, SPF_SOFTFAIL=0.665,
	SUBJ_ALL_CAPS=0.5, TO_EQ_FM_DIRECT_MX=2.499]
	autolearn=no autolearn_force=no
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2c_Y2usus2oj for <devel@linuxdriverproject.org>;
	Fri, 21 Jan 2022 14:07:07 +0000 (UTC)
X-Greylist: delayed 10:49:28 by SQLgrey-1.8.0
Received: from linuxdriverproject.org (unknown [185.222.57.88])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9177840167
	for <devel@linuxdriverproject.org>; Fri, 21 Jan 2022 14:07:06 +0000 (UTC)
From: Server Administrator<devel@linuxdriverproject.org>
To: devel@linuxdriverproject.org
Subject: EMAIL ACCOUNT CONFIRMATION AND UPGRADE.
Date: 21 Jan 2022 15:06:44 +0100
Message-ID: <20220121150644.3AD9C5548595CC10@linuxdriverproject.org>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0012_86D170BD.5572C83C"

--4E76D1BF31D.1642774028/ash.osuosl.org--

--===============1260270540597386032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1260270540597386032==--
