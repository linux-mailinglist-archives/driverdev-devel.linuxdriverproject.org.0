Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBFE7FA7E8
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Nov 2023 18:26:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 743E040335;
	Mon, 27 Nov 2023 17:26:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 743E040335
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pkqakYrE4Evq; Mon, 27 Nov 2023 17:26:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6EDF64031C;
	Mon, 27 Nov 2023 17:26:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6EDF64031C
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 865A31BF860
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Nov 2023 17:26:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5E420405E6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Nov 2023 17:26:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E420405E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r0x9UYHkdYyf
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Nov 2023 17:26:42 +0000 (UTC)
Received: from inside.srm-medias.com (inside.srm-medias.com [144.76.155.178])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4056D404FF
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 27 Nov 2023 17:26:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4056D404FF
Received: from [91.224.92.17] (unknown [91.224.92.17])
 by inside.srm-medias.com (Postfix) with ESMTPA id D494F2F8FBC;
 Mon, 27 Nov 2023 09:06:00 +0100 (CET)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: RE
To: Recipients <prakash@srm-medias.com>
From: "Cristy Davis" <prakash@srm-medias.com>
Date: Mon, 27 Nov 2023 00:06:08 -0800
X-PPP-Message-ID: <170107236167.1399841.7689902253327408114@inside.srm-medias.com>
X-PPP-Vhost: srm-medias.com
Message-Id: <20231127172643.5E420405E6@smtp2.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=srm-medias.com; s=default; t=1701072361;
 bh=yzpcAkhxrSagXueYeLlsstuXoOXbU1UGk0bJjtHfEpM=; h=Subject:To:From;
 b=fySXGU2u08WcbZZR3P6FIKPZNu+1KAxpzRM3NtD+QwFWqxeYF3YBmGtEZKt35/LJP
 eaRzrQzlbkoZtSLxdzrfN37Zfqi778rhR1sSIm4kEElhddyHNclTZuGgG5fCX9BGF/
 5e5Z+U3liTApmU2Z14ZOQefYPPYgMEAhUULCJfv4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=srm-medias.com header.i=@srm-medias.com
 header.a=rsa-sha256 header.s=default header.b=fySXGU2u
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
Reply-To: cristydavis7788@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8sIG15IG5hbWUgaXMgQ3Jpc3R5IERhdmlzLCBJ4oCZbSBmcm9tIE1pY2hpZ2FuLiBUd28g
TWlsbGlvbiwgVW5pdGVkIFN0YXRlcyBEb2xsYXJzIGhhcyBiZWVuIGRvbmF0ZWQgdG8geW91LCBJ
IHdvbiB0aGUgJDcwIG1pbGxpb24gUG93ZXJiYWxsIGxvdHRlcnkgLCBhbmQgSSBoYXZlIHZvbHVu
dGFyaWx5IGRlY2lkZWQgdG8gZG9uYXRlIHRoZSBzdW0gb2YgJDIsMDAwLDAwMC4wMCB0byB5b3Us
IENvbnRhY3QgbWUgdXJnZW50bHkgdmlhOyBjcmlzdHlkYXZpczc3ODhAZ21haWwuY29tICBmb3Ig
Y2xhaW1zLndhdGNoIG15IGZ1bGwgaW50ZXJ2aWV3IGhlcmU6aHR0cHM6Ly93d3cueW91dHViZS5j
b20vd2F0Y2g/dj1xb2QxU2d4eWk2VQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
