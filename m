Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D3E87D755
	for <lists+driverdev-devel@lfdr.de>; Sat, 16 Mar 2024 00:31:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4478C417ED;
	Fri, 15 Mar 2024 23:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QR62_oQSvyVu; Fri, 15 Mar 2024 23:31:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39BC74180B
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39BC74180B;
	Fri, 15 Mar 2024 23:31:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB9361BF362
 for <devel@linuxdriverproject.org>; Fri, 15 Mar 2024 23:31:14 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix)
 id D1AF582325; Fri, 15 Mar 2024 23:31:13 +0000 (UTC)
Date: Fri, 15 Mar 2024 23:31:13 +0000 (UTC)
From: MAILER-DAEMON@osuosl.org (Mail Delivery System)
Subject: Successful Mail Delivery Report
To: devel@driverdev.osuosl.org
Auto-Submitted: auto-replied
MIME-Version: 1.0
Message-Id: <20240315233113.D1AF582325@smtp1.osuosl.org>
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
Content-Type: multipart/mixed; boundary="===============7170673769672922649=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a MIME-encapsulated message.

--===============7170673769672922649==
Content-Type: multipart/report; report-type=delivery-status;
	boundary="B656A82315.1710545473/smtp1.osuosl.org"
Content-Transfer-Encoding: 8bit

This is a MIME-encapsulated message.

--B656A82315.1710545473/smtp1.osuosl.org
Content-Description: Notification
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

This is the mail system at host smtp1.osuosl.org.

Your message was successfully delivered to the destination(s)
listed below. If the message was delivered to mailbox you will
receive no further notifications. Otherwise you may still receive
notifications of mail delivery errors from other systems.

                   The mail system

<devel@driverdev.osuosl.org>: alias expanded

--B656A82315.1710545473/smtp1.osuosl.org
Content-Description: Delivery report
Content-Type: message/delivery-status

Reporting-MTA: dns; smtp1.osuosl.org
X-Postfix-Queue-ID: B656A82315
X-Postfix-Sender: rfc822; devel@driverdev.osuosl.org
Arrival-Date: Fri, 15 Mar 2024 23:31:07 +0000 (UTC)

Final-Recipient: rfc822; devel@driverdev.osuosl.org
Original-Recipient: rfc822;devel@driverdev.osuosl.org
Action: expanded
Status: 2.0.0
Diagnostic-Code: X-Postfix; alias expanded

--B656A82315.1710545473/smtp1.osuosl.org
Content-Description: Message Headers
Content-Type: text/rfc822-headers
Content-Transfer-Encoding: 8bit

Return-Path: <devel@driverdev.osuosl.org>
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=157.10.44.177; helo=[157.10.44.177]; envelope-from=devel@driverdev.osuosl.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B656A82315
Authentication-Results: smtp1.osuosl.org; dmarc=none (p=none dis=none) header.from=driverdev.osuosl.org
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B656A82315
Received: from [157.10.44.177] (unknown [157.10.44.177])
	by smtp1.osuosl.org (Postfix) with ESMTP id B656A82315
	for <devel@driverdev.osuosl.org>; Fri, 15 Mar 2024 23:31:07 +0000 (UTC)
From: driverdev.osuosl.org cpanel <devel@driverdev.osuosl.org>
To: devel@driverdev.osuosl.org
Subject: [ACTION REQUIRED]  :  devel@driverdev.osuosl.org have  Pending incoming messages.
Date: 15 Mar 2024 16:31:05 -0700
Message-ID: <20240315163105.960D3EA68D4F915E@driverdev.osuosl.org>
MIME-Version: 1.0
Disposition-Notification-To: noreply@driverdev.osuosl.org
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

--B656A82315.1710545473/smtp1.osuosl.org--

--===============7170673769672922649==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7170673769672922649==--
