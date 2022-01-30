Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0F14A3386
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Jan 2022 04:32:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 795A8829B6;
	Sun, 30 Jan 2022 03:32:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JDIO7EOHFUUE; Sun, 30 Jan 2022 03:32:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A919828F2;
	Sun, 30 Jan 2022 03:32:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C4F21BF488
 for <devel@linuxdriverproject.org>; Sun, 30 Jan 2022 03:32:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F0144087E
 for <devel@linuxdriverproject.org>; Sun, 30 Jan 2022 03:32:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9CuEmvm06RVk for <devel@linuxdriverproject.org>;
 Sun, 30 Jan 2022 03:32:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7EE224087D
 for <devel@driverdev.osuosl.org>; Sun, 30 Jan 2022 03:32:22 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id m11so19358786edi.13
 for <devel@driverdev.osuosl.org>; Sat, 29 Jan 2022 19:32:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=B5teSI3NqSzeGu7ngV/22RiyR60khzQ8THYZDZ9DX3Q=;
 b=HWabEwckgDZHF/shbOFnizSAhGklicI2ARDkB0DIL/Y5r/rKoYSNkr355bi9N4jGWb
 O7a2Sysr1Rx5L04oi4an0UWxZlAR2CMyQC7qJkFNn+uqz+S1FpTQzjS5YXnnv2GV45pH
 qMDlaye+/jrf6IkWEkgV7GU1gVR0BXLA/PTG6YNwFxQskv8Cb+bhTSyZsUOlTaDsrWLj
 J7AigrRgiSZ3cezYitNVWJTHH+yZhYLji++P8JyUB0rzTS+WEP6CnD0v68UyWrGcCoIq
 M2c/x/Mnh985g00sKhIkz0fqCLcl2sccA0NWjMAfncKLd/sh6z4TBzDARFar1hdrR8Ez
 yd6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=B5teSI3NqSzeGu7ngV/22RiyR60khzQ8THYZDZ9DX3Q=;
 b=ONGvjSYrpv4Xomy5xx3i2OgX5iL3USSxVebVl0aAd/uu51d5zH0luzCTFsI6DjmEO7
 MYC5xUviYdZ9d+4s4I7pxz8ZcAy58v1v4BQYM3bfS8wwX63wv8MmHd855tn8CJL3X6On
 wueH+lY2nOGoiKEru9I+E2vJ6aAigTpuFEOZ4UstIDe1cn01fg12NE6TriJ8EcjL3UZx
 jtZI5qd2XZQnuquVVnAKlVW1u/Mpj8I5y68GAhVIBM89W+w2I2AtqB6u+R4bPrIDoUjl
 5SjLDnx09de3BdmerxNlATLtVtNJJ22151ZoOW8AsoUeuJxcX2c8ZD6AjvCAU9uGt3VX
 959A==
X-Gm-Message-State: AOAM532KyNm77CKNUjC1D3j5djepw29x8/pndtUAyyLVg5nENcpAVdTZ
 T2NUepEu+21+p1rK8pSZLtQBsU08uEOMB2kKgtg=
X-Google-Smtp-Source: ABdhPJwanF3U8w7E0VUYTAeA3JUGZAPspFHrspDHwg3WE+FiggEWGxud8PybamU5qAj7cXSExIK+tNT23aFodMxKVYc=
X-Received: by 2002:aa7:c0d6:: with SMTP id j22mr15279375edp.240.1643513540645; 
 Sat, 29 Jan 2022 19:32:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:4fcd:0:0:0:0 with HTTP; Sat, 29 Jan 2022 19:32:19
 -0800 (PST)
From: Mrs  Chantal <moummarmrschantal@gmail.com>
Date: Sun, 30 Jan 2022 04:32:19 +0100
Message-ID: <CAFg=ZoyEPrzU-w9ptHcc4eSxcyoScHQNgnOO07m3mdWvqjrSYg@mail.gmail.com>
Subject: Hello....
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
Reply-To: mrs.bill.chantalone01@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

You have been compensated with the sum of 9.5 million dollars in this
united nation the payment will be issue into atm visa  card and send
to you from the santander bank we need your address and your
Whatsapp number  + 1 6465853907  this my email.ID
( mrs.bill.chantal.roland@gmail.com )  contact  me

Thanks my

mrs bill chantal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
