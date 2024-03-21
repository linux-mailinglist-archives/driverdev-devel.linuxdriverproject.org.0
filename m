Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C37918860C8
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Mar 2024 19:54:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7CB8B4170F;
	Thu, 21 Mar 2024 18:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6_3hDGB04nlb; Thu, 21 Mar 2024 18:54:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 974D6404D3
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 974D6404D3;
	Thu, 21 Mar 2024 18:54:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 224781BF359
 for <devel@linuxdriverproject.org>; Thu, 21 Mar 2024 18:54:02 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix)
 id F2F6181B69; Thu, 21 Mar 2024 18:54:00 +0000 (UTC)
Date: Thu, 21 Mar 2024 18:54:00 +0000 (UTC)
From: MAILER-DAEMON@osuosl.org (Mail Delivery System)
Subject: Successful Mail Delivery Report
To: devel@driverdev.osuosl.org
Auto-Submitted: auto-replied
MIME-Version: 1.0
Message-Id: <20240321185400.F2F6181B69@smtp1.osuosl.org>
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
Content-Type: multipart/mixed; boundary="===============1408347036791338986=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a MIME-encapsulated message.

--===============1408347036791338986==
Content-Type: multipart/report; report-type=delivery-status;
	boundary="47F8A813B7.1711047240/smtp1.osuosl.org"
Content-Transfer-Encoding: 8bit

This is a MIME-encapsulated message.

--47F8A813B7.1711047240/smtp1.osuosl.org
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

--47F8A813B7.1711047240/smtp1.osuosl.org
Content-Description: Delivery report
Content-Type: message/delivery-status

Reporting-MTA: dns; smtp1.osuosl.org
X-Postfix-Queue-ID: 47F8A813B7
X-Postfix-Sender: rfc822; devel@driverdev.osuosl.org
Arrival-Date: Thu, 21 Mar 2024 18:53:58 +0000 (UTC)

Final-Recipient: rfc822; devel@driverdev.osuosl.org
Original-Recipient: rfc822;devel@driverdev.osuosl.org
Action: expanded
Status: 2.0.0
Diagnostic-Code: X-Postfix; alias expanded

--47F8A813B7.1711047240/smtp1.osuosl.org
Content-Description: Message Headers
Content-Type: text/rfc822-headers
Content-Transfer-Encoding: 8bit

Return-Path: <devel@driverdev.osuosl.org>
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=157.10.44.177; helo=[157.10.44.177]; envelope-from=devel@driverdev.osuosl.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 47F8A813B7
Authentication-Results: smtp1.osuosl.org; dmarc=none (p=none dis=none) header.from=driverdev.osuosl.org
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47F8A813B7
Received: from [157.10.44.177] (unknown [157.10.44.177])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47F8A813B7
	for <devel@driverdev.osuosl.org>; Thu, 21 Mar 2024 18:53:58 +0000 (UTC)
From: driverdev.osuosl.org cpanel <devel@driverdev.osuosl.org>
To: devel@driverdev.osuosl.org
Subject: Important delivery Notice: 2FA AUTHENTICATOR 
Date: 21 Mar 2024 11:53:56 -0700
Message-ID: <20240321115356.FC867143024CE0EF@driverdev.osuosl.org>
MIME-Version: 1.0
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

--47F8A813B7.1711047240/smtp1.osuosl.org--

--===============1408347036791338986==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1408347036791338986==--
