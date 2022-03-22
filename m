Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC79A4E3E6B
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Mar 2022 13:22:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AC0E40122;
	Tue, 22 Mar 2022 12:22:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CjbV2kLgoNCO; Tue, 22 Mar 2022 12:22:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 214424000B;
	Tue, 22 Mar 2022 12:22:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2556E1BF2A4
 for <devel@linuxdriverproject.org>; Tue, 22 Mar 2022 12:22:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14016824C1
 for <devel@linuxdriverproject.org>; Tue, 22 Mar 2022 12:22:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nPOphQaXSbqA for <devel@linuxdriverproject.org>;
 Tue, 22 Mar 2022 12:22:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8FA31842F2
 for <devel@driverdev.osuosl.org>; Tue, 22 Mar 2022 12:22:35 +0000 (UTC)
Received: by mail-il1-x12a.google.com with SMTP id b9so12295948ila.8
 for <devel@driverdev.osuosl.org>; Tue, 22 Mar 2022 05:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=hDE408tgDC2clqzo23ez6Lb/cQLmqmodgg9+orFFIpM=;
 b=jp1hgX9zCQIxAZ4MTHeVbsaFKwLbuJp6q/iOiP5+4GoQrtMEp51xujOXU9sJ8K8liT
 clU6Nz89kewid4AqJdropx14yhcMCGWfUSRMVw3b8HdlZU5pI7Wwp+nDlKnuRQerKv8R
 Id0vyCi+q+EmFCcLGVc/NNYC0GJBvMuO8Ji9MZLxLTwfspln7s2PZueiRe6BKFBCAzOt
 zW5GDFCe7NUESQVSRIWZFKOAPYhcmKMQOyfTvKAyLyCOaI/O07IndPJUIknO9B5i0vZV
 S3TaTFQKLq7jQVM/GJlwn0rqx9JvqzhRfsbJkjXCKlwwjijKgt+ZQa2iaeaFE5n9GECt
 jzUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=hDE408tgDC2clqzo23ez6Lb/cQLmqmodgg9+orFFIpM=;
 b=1F+HHmYSPlRL8VCmh4ers3aIaFb96oyyxDBHq8LM6n5/ePyYl49f6KvEwZbrayMO3O
 1ZIoMAl8IY+lmHpVdUWN/pwenB1Zr+fOWExpszIQV3qgnezbNnEz0FnIwgYmcTKceLgB
 ZI+kkahCrx1JA4E2AnIVK8k70OGSdLnZTTzv7Wp96UDYI3E8qQlZ/fVTNL2Z+XwCeYBB
 eyn/r8T4k8bU0wDTUrvB77TnrnFDVyILrfx/EV/nIzq717oEwYmNdIxQxACPjHhXmOVo
 WMVnxlR3qa0dsN75kYhGQRWcFCV912Ed3wEvEPtY6HXJsrpxTke36zulBDq4JYDYuXYI
 KtCg==
X-Gm-Message-State: AOAM531hRvTQ8N0mK+L7dh3VWHUUggFJoDfSCrmcOPLAyqHL0r+6o8Bf
 oi4K11vgt8nG0pvljzcumLfUsktT4mZoolRGJFk=
X-Google-Smtp-Source: ABdhPJzi679a2nbuAoZSVJJsczBpJiK2V+vJxotdLVOqwRULeR4qOwmAGgAIfdA6vQIjk83QypPEw1AkwhBWoRylnAM=
X-Received: by 2002:a92:7513:0:b0:2b9:5b61:e376 with SMTP id
 q19-20020a927513000000b002b95b61e376mr12715027ilc.193.1647951754527; Tue, 22
 Mar 2022 05:22:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:c8d6:0:0:0:0:0 with HTTP; Tue, 22 Mar 2022 05:22:33
 -0700 (PDT)
From: MR MAICK <psfcompany40@gmail.com>
Date: Tue, 22 Mar 2022 13:22:33 +0100
Message-ID: <CAEJc73f+4ZeXwWdD5RWtjZZeJY+phjXFn5KfvZMkZ0XHVKfLKQ@mail.gmail.com>
Subject: WINNING NOTIFICATION
To: undisclosed-recipients:;
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
Reply-To: mike.holas64@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RU1BSUwgRUpFUi4KCkRlbm5lIGJlc2tlZCBlciBmb3IgYXQgaW5mb3JtZXJlIGRpZyBvbSwgYXQg
ZGluIGUtbWFpbCB2YW5kdCAyLjYwMC4wMDAKbWlsbGlvbmVyIGRvbGxhcnMuIEtvbnRha3QgQmFy
cmlzdGVyIEVkd2FyZCBSYXltb25kIHZpYSBoYW5zIGUtbWFpbApoZXIgKCBhZHViYTk4MTFAaG90
bWFpbC5jb20gKSBmb3IgYXQgZ8O4cmUga3JhdiBww6UgZGluIHZpbmRlbmRlIHBlbmdlCm1lZCBk
aW5lIG9wbHlzbmluZ2VyIHNvbSBmw7hsZ2VyLCBkaXQgZnVsZGUgbmF2biwgZGl0IGxhbmQsIGRp
dApoamVtbWVhZHJlc3NlIG9nIGRpdCB0ZWxlZm9ubnVtbWVyLgoKTWVkIHZlbmxpZyBoaWxzZW4K
TXIuIE1hbGljayBTYW1iYS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
