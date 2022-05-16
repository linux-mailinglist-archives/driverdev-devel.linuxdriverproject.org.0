Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 355055288DB
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 May 2022 17:29:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 215D641869;
	Mon, 16 May 2022 15:29:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HcuSUrVora4D; Mon, 16 May 2022 15:29:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F43841847;
	Mon, 16 May 2022 15:29:16 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 94BF31BF344
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 May 2022 15:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8BFB9819B8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 May 2022 15:29:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dr3B9xXUW88v
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 May 2022 15:29:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from postfix-inbound-v2-8.inbound.mailchannels.net
 (inbound-egress-6.mailchannels.net [199.10.31.238])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8834A81842
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 May 2022 15:29:12 +0000 (UTC)
Received: by postfix-inbound-v2-8.inbound.mailchannels.net (Postfix)
 id C09D3203A8; Mon, 16 May 2022 15:29:11 +0000 (UTC)
Date: Mon, 16 May 2022 15:29:11 +0000 (UTC)
From: MAILER-DAEMON@postfix-inbound-v2-8.inbound.mailchannels.net (Mail
 Delivery System)
Subject: Undelivered Mail Returned to Sender
To: driverdev-devel@linuxdriverproject.org
Auto-Submitted: auto-replied
MIME-Version: 1.0
Message-Id: <20220516152911.C09D3203A8@postfix-inbound-v2-8.inbound.mailchannels.net>
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
Content-Type: multipart/mixed; boundary="===============4195746176976658457=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a MIME-encapsulated message.

--===============4195746176976658457==
Content-Type: multipart/report; report-type=delivery-status;
	boundary="3AE9820389.1652714951/postfix-inbound-v2-8.inbound.mailchannels.net"
Content-Transfer-Encoding: 8bit

This is a MIME-encapsulated message.

--3AE9820389.1652714951/postfix-inbound-v2-8.inbound.mailchannels.net
Content-Description: Notification
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

This is the mail system at host postfix-inbound-v2-8.inbound.mailchannels.net.

I'm sorry to have to inform you that your message could not
be delivered to one or more recipients. It's attached below.

For further assistance, please send mail to postmaster.

If you do so, please include this problem report. You can
delete your own text from the attached returned message.

                   The mail system

<info@grassrootsjoy.com>: host mx2.dreamhost.com[64.90.62.164] said: 550 5.1.1
    <info@grassrootsjoy.com>: Recipient address rejected: User unknown in
    virtual alias table (in reply to RCPT TO command)

--3AE9820389.1652714951/postfix-inbound-v2-8.inbound.mailchannels.net
Content-Description: Delivery report
Content-Type: message/delivery-status

Reporting-MTA: dns; postfix-inbound-v2-8.inbound.mailchannels.net
X-Postfix-Queue-ID: 3AE9820389
X-Postfix-Sender: rfc822; driverdev-devel@linuxdriverproject.org
Arrival-Date: Mon, 16 May 2022 15:29:11 +0000 (UTC)

Final-Recipient: rfc822; info@grassrootsjoy.com
Original-Recipient: rfc822;info@grassrootsjoy.com
Action: failed
Status: 5.1.1
Remote-MTA: dns; mx2.dreamhost.com
Diagnostic-Code: smtp; 550 5.1.1 <info@grassrootsjoy.com>: Recipient address
    rejected: User unknown in virtual alias table

--3AE9820389.1652714951/postfix-inbound-v2-8.inbound.mailchannels.net
Content-Description: Undelivered Message Headers
Content-Type: text/rfc822-headers
Content-Transfer-Encoding: 8bit

Return-Path: <driverdev-devel@linuxdriverproject.org>
Received: from postfix-inbound-v2-8.inbound.mailchannels.net (localhost [127.0.0.1])
	by postfix-inbound-v2-8.inbound.mailchannels.net (Postfix) with ESMTP id 3AE9820389
	for <info@grassrootsjoy.com>; Mon, 16 May 2022 15:29:11 +0000 (UTC)
Received: from inbound-trex-1 (unknown [127.0.0.6])
	by postfix-inbound-v2-8.inbound.mailchannels.net (Postfix) with ESMTP id 2980420392
	for <info@grassrootsjoy.com>; Mon, 16 May 2022 15:29:11 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1652714950; a=rsa-sha256;
	cv=none;
	b=bYJ3LaJweN+GHRavOTZbzTG4QHI/k9adoH6ZsfkiOfoGR+K5arYQchux3TwKNT9I9RzUTb
	X0kVU4SDosFJhOpLjivCnxMYQV2jfeTY7PoKZDytMxksnfApvQR8dsvKp2PuPt+w/ytPQ9
	SwFfde0xS0I9bBsY1vPZHjErzuKZdov7h32Y0gPim4nQ/sO3lWc/exxuGNsN1OlpsCEi1t
	A2GOrLAaKtbKWb/5k4ff1k/9uyOs2NoAKKoub9QByqYNJp7hdS7HvbX1jJQoCVW0ZmrCxD
	64IywDusdK/RDY+6qhchLgAsNlM7aCqldbtLJIJzPwFONPKPXYx2bkAGzgT7zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1652714950;
	h=from:from:reply-to:reply-to:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=mCuf4DBkYNQv34r6axwkzjoaqm/8RS4JP+b3LWXxIOM=;
	b=1uU9vREmC8flppFijS8lKoFfsjIZlWYkeIVStYsBjickWu4P78Fwol8Q9RP8FhcTvKaj2j
	F5M4DThund1r0IKFxFpx84ZeQsJSmPi40rPmbVnP9I/PnKyH4BETgX96H6bQPrhBJIetFQ
	gHkH7yshIOM7CWFDTjxxAaf+MkIuZlTGwwUMNlcN9eqKnJIiAzeHuV/w0Smw8nERChoH6G
	A97uxs7K4Z9eDS6vLnHnjrP1OsVa4CoyWVl8fjjMI8UW0fu3dgmkDTnXrZt5n854PWeBcs
	jFOxxdrfOaX1lmOIfvwK8XKXqxeR8vv9cFrGlr6ErJ6NR/NTB9LNg9CMYr/PjQ==
ARC-Authentication-Results: i=1;
	inbound-rspamd-dd765d586-5jz6j;
	none
X-Spam-Reason: confirmed_spam
X-VR-STATUS: SPAM
X-Message-ID: aNGScUHnKa26hgKHTFqXdCgm
Received: from linuxdriverproject.org ([TEMPUNAVAIL]. [110.82.143.32])
	by 100.116.40.249 (trex/6.7.1);
	Mon, 16 May 2022 15:29:10 +0000
Authentication-Results: inbound.mailchannels.net;
 spf=softfail smtp.mailfrom=driverdev-devel@linuxdriverproject.org;
 dkim=none;
 dmarc=none
Received-SPF: softfail (inbound-dmarc-77f89674fc-cmmmq: transitioning domain
 of linuxdriverproject.org does not designate 110.82.143.32 as permitted
 sender) client-ip=110.82.143.32;
 envelope-from=driverdev-devel@linuxdriverproject.org;
 helo=linuxdriverproject.org;
X-GUID: C69E137D-0403-4CC5-ACB1-F3189D4F433D
X-Has-Attach: yes
From: "0b2" <driverdev-devel@linuxdriverproject.org>
To: "info" <info@grassrootsjoy.com>
Content-Type: multipart/mixed; charset=UTF-8; boundary="----=_842_NextPart137383857172_=----"
MIME-Version: 1.0
Reply-To: 13163000005@189.cn
Date: Mon, 16 May 2022 23:29:02 +0800
Message-Id: <202205162328394087331@linuxdriverproject.org>
X-Mailer: Foxmail 7, 2, 5, 140[cn]

--3AE9820389.1652714951/postfix-inbound-v2-8.inbound.mailchannels.net--

--===============4195746176976658457==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4195746176976658457==--
