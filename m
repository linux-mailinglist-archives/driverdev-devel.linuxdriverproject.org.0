Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 406548D808B
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2024 13:06:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14E0E60711;
	Mon,  3 Jun 2024 11:06:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RSmR8QCQ_PfV; Mon,  3 Jun 2024 11:06:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30AE06076B
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30AE06076B;
	Mon,  3 Jun 2024 11:06:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D3771BF383
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2024 11:06:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9401440109
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2024 11:06:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n1ETWdxC9_cK for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2024 11:06:03 +0000 (UTC)
X-Greylist: delayed 2758 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 03 Jun 2024 11:06:02 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E4294400C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4294400C6
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=94.76.74.186;
 helo=zimbra.srv.gu.kyiv.dsns.gov.ua; envelope-from=bernardarnault438@gmail.com;
 receiver=<UNKNOWN> 
Received: from zimbra.srv.gu.kyiv.dsns.gov.ua (unknown [94.76.74.186])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E4294400C6
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2024 11:06:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.srv.gu.kyiv.dsns.gov.ua (Postfix) with ESMTP id 3235FA9B35F
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2024 12:59:53 +0300 (EEST)
Received: from zimbra.srv.gu.kyiv.dsns.gov.ua ([127.0.0.1])
 by localhost (zimbra.srv.gu.kyiv.dsns.gov.ua [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id vD_dB5fZ_G9i for <devel@driverdev.osuosl.org>;
 Mon,  3 Jun 2024 12:59:52 +0300 (EEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.srv.gu.kyiv.dsns.gov.ua (Postfix) with ESMTP id E024BA99B75
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2024 12:59:51 +0300 (EEST)
X-Virus-Scanned: amavisd-new at zimbra.srv.gu.kyiv.dsns.gov.ua
Received: from zimbra.srv.gu.kyiv.dsns.gov.ua ([127.0.0.1])
 by localhost (zimbra.srv.gu.kyiv.dsns.gov.ua [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id BUqMiMu7lRIL for <devel@driverdev.osuosl.org>;
 Mon,  3 Jun 2024 12:59:51 +0300 (EEST)
Received: from gmail.com (unknown [111.90.141.22])
 by zimbra.srv.gu.kyiv.dsns.gov.ua (Postfix) with ESMTPSA id 4B207A75DE3
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2024 12:59:49 +0300 (EEST)
From: Arnault Bernard < bernardarnault438@gmail.com >
To: devel@driverdev.osuosl.org
Subject: =?UTF-8?B?TXIuIEJlcm7DpHJkIGjDpHMgZMO2bsOkdGVkIDMuNSwwMDAsMDAwVVNEIHTDtiB5w7Z1IGbDtnIgdGhlIHB1cnDDtnNlIMO2ZiBjaMOkcml0eS4ga2luZGx5IHJlc3DDtm5kIHTDtg==?=
 bernardarnault438@gmail.com =?UTF-8?B?ZsO2ciBtw7ZyZSBpbmbDtnJtw6R0aW9uLg==?=
Date: 03 Jun 2024 18:00:26 +0800
Message-ID: <20240603180026.54286DF4E76B65D4@gmail.com>
MIME-Version: 1.0
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=fail (p=none dis=none)
 header.from=gmail.com
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
Reply-To: bernardarnault438@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
