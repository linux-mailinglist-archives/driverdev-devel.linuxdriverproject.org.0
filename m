Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 428F94683BB
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Dec 2021 10:47:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D8F283E5F;
	Sat,  4 Dec 2021 09:47:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id djWjxgCpjDHp; Sat,  4 Dec 2021 09:47:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 081EA83E3A;
	Sat,  4 Dec 2021 09:47:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F0F941BF5DC
 for <devel@linuxdriverproject.org>; Sat,  4 Dec 2021 09:46:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E6C1F4109F
 for <devel@linuxdriverproject.org>; Sat,  4 Dec 2021 09:46:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new); dkim=neutral
 reason="invalid (public key: not available)"
 header.d=ef-system-development.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Snj9-ctWPQW for <devel@linuxdriverproject.org>;
 Sat,  4 Dec 2021 09:46:53 +0000 (UTC)
X-Greylist: delayed 00:36:33 by SQLgrey-1.8.0
Received: from bosmailout06.eigbox.net (bosmailout06.eigbox.net [66.96.190.6])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 002BE409FE
 for <devel@driverdev.osuosl.org>; Sat,  4 Dec 2021 09:46:52 +0000 (UTC)
Received: from bosmailscan09.eigbox.net ([10.20.15.9])
 by bosmailout06.eigbox.net with esmtp (Exim) id 1mtR3h-0000bj-KF
 for devel@driverdev.osuosl.org; Sat, 04 Dec 2021 04:10:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=ef-system-development.com; s=dkim; h=Sender:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-ID:From:Date:Subject:To:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cVkAk5MdKjRvXXet4VvhTx/uAQSlmvNwRMwyf3JQg6I=; b=pbAlKDjhq/jpjWO1d7lQuNXle
 rvZnguLqzGehS5MQNpChdDts9QJ7CgKF7gsUTw4rB5ekdaECdT+27DzqI/2PrrTvVKazeijnUCjyt
 fSN+BwOpIN5nAA8fDTLdzsMQ9vW04E1p8aeV4qYJjFOyGz0zKntidriguJcEmdczb0sEd/G7VGB8F
 rmqeBY4zRVcE1JZ/1/hHFtzmXitz/bQ4p6uQ/yJNPaS63HXQF+u9mOTSot0JAGRj3y6tipRBmIne/
 tP1wGYcXgC8tOgj6U8XyQ1Au6OvhpTPuzkxQnOBUSjuWzYymf/Hliacd0JtlIjJ6c1Mec7Kq5KlK9
 fB5lBp06g==;
Received: from [10.115.3.32] (helo=bosimpout12)
 by bosmailscan09.eigbox.net with esmtp (Exim) id 1mtR3h-0000Lh-08
 for devel@driverdev.osuosl.org; Sat, 04 Dec 2021 04:10:17 -0500
Received: from boscustweb5305.eigbox.net ([10.20.12.100]) by bosimpout12 with 
 id S99D2600h29WtfN0199GNU; Sat, 04 Dec 2021 04:09:17 -0500
X-EN-SP-DIR: OUT
X-EN-SP-SQ: 1
Received: from dom.gennaganocc2012070155659 by boscustweb5305.eigbox.net with
 local (Exim) id 1mtR1w-0005pd-H4
 for devel@driverdev.osuosl.org; Sat, 04 Dec 2021 04:08:28 -0500
X-EN-Info: U=dom.gennaganocc2012070155659 P=/index.php
X-EN-CGIUser: dom.gennaganocc2012070155659
X-EN-CGIPath: /index.php
X-EN-OrigIP: 81.17.18.61
To: devel@driverdev.osuosl.org
Subject: =?us-ascii?Q?Thank_you_for_your_inquiry_to_SOA_Development_L?=
 =?us-ascii?Q?td?=
X-PHP-Originating-Script: 6222692:PHPMailer.php
Date: Sat, 4 Dec 2021 09:08:28 +0000
From: SOA Development <info@ef-system-development.com>
Message-ID: <yvvGVAvermoNEVIUGdZGRQtJOLouvFF8g36T5rFSpb0@ef-system-development.com>
X-Mailer: PHPMailer 6.1.6 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
X-EN-Timestamp: Sat, 04 Dec 2021 04:08:28 -0500
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

V2UgaGF2ZSByZWNlaXZlZCB0aGUgZm9sbG93aW5nIGlucXVpcnkgZnJvbSB5b3UuCgotLS0tLS0t
LS0tLS0tLS0KTmFtZTog4p2k77iPIEFsaWNlIHdhbnQgdG8gbWVldCB5b3UhIENsaWNrIEhlcmU6
IGh0dHA6Ly9iaXQuZG8vZlNNdms/YzI0cyDinaTvuI8KCkVtYWlsOiBkZXZlbEBkcml2ZXJkZXYu
b3N1b3NsLm9yZwoKU3ViamVjdDogazVtdDZ3ZQoKSW5xdWlyeToK44CAcXdkOGNtCi0tLS0tLS0t
LS0tLS0tLQoKV2Ugd2lsbCBnZXQgYmFjayB0byB5b3UgZnJvbSB0aGUgcGVyc29uIGluIGNoYXJn
ZS4KCuKWoeKWoOKWoeKWoOKWoeKWoOKWoeKWoOKWoeKWoOKWoeKWoOKWoeKWoOKWoeKWoOKWoeKW
oOKWoeOAgApTT0EgRGV2ZWxvcG1lbnQgTHRkCgpVbml0IExldmVsIDQoQSksIE1haW4gT2ZmaWNl
IFRvd2VyLApKYWxhbiBPS0sgQXdhbmcgRmluYW5jaWFsIFBhcmsgTGFidWFuLApKYWxhbiBNZXJk
ZWthLCA4NzAwMCwKRmVkZXJhbCBUZXJyaXRvcnkgb2YgTGFidWFuLCBNYWxheXNpYQoKRS1tYWls
77yaaW5mb0BlZi1zeXN0ZW0tZGV2ZWxvcG1lbnQuY29tCgpIUDogaHR0cDovL2VmLXN5c3RlbS1k
ZXZlbG9wbWVudC5jb20K4pah4pag4pah4pag4pah4pag4pah4pag4pah4pag4pah4pag4pah4pag
4pah4pag4pah4pag4pahCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
