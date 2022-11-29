Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F81463C909
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Nov 2022 21:13:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 251B541701;
	Tue, 29 Nov 2022 20:13:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 251B541701
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g9lBMBFdtgUC; Tue, 29 Nov 2022 20:13:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C792541716;
	Tue, 29 Nov 2022 20:13:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C792541716
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E07671BF2C1
 for <devel@linuxdriverproject.org>; Tue, 29 Nov 2022 20:13:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97D1160BDA
 for <devel@linuxdriverproject.org>; Tue, 29 Nov 2022 20:13:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97D1160BDA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eQ90-S95pdBr for <devel@linuxdriverproject.org>;
 Tue, 29 Nov 2022 20:13:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8EEA60BB6
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D8EEA60BB6
 for <devel@linuxdriverproject.org>; Tue, 29 Nov 2022 20:13:42 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id q7so18543253ljp.9
 for <devel@linuxdriverproject.org>; Tue, 29 Nov 2022 12:13:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
 b=WRFG1bgTDuQE3m3vc3rAAW2WO6ZKx2hkUtpWmtsYKhAV+JlSTwXWtAt7+VsPn76BBG
 5yyLCd6xHwbPajer8Om5XJPefEsNGal5UKy8rk5JCed8CZFQgmuXyAa5mWeUwfVA3dnA
 nvuKokQrbJYyOltyELJomJ7PZ9a3ZmhGczoiWU2lv+jiSdF+zaFZMkMzxGpL68njBU0M
 CZX6LzIhoq3D+5dSjx9E4gEWLHEGeqM6IHh6sC3KY04Huf6PH162n+w9G5FCYPQApquo
 70XcWI00tgMa7toDzDrQ/WatKzmH/Ktq6Io/xfLVpadjhr0EXJzvJ9K3WLV7tM1gYMtD
 cuaA==
X-Gm-Message-State: ANoB5pmp01voTRiCHBGLaLXwL9fe4O+EC70w/DtJe8R5XfWUFEkROqjr
 VYJaJt0LdncuMc/EOqLZ8xdQjmFHKvGgw09CEYI=
X-Google-Smtp-Source: AA0mqf4+F9TyDQP1Ce2PfnR/pYBFWTAEF62pD7GZYkg7CduLXEkkJypQXMVWDo+1vw39/WFBYPCVnCuXdFNJSBE+AXs=
X-Received: by 2002:a2e:a543:0:b0:277:8f64:f9fa with SMTP id
 e3-20020a2ea543000000b002778f64f9famr14243228ljn.282.1669752820449; Tue, 29
 Nov 2022 12:13:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6520:2542:b0:22c:9bbc:bff with HTTP; Tue, 29 Nov 2022
 12:13:39 -0800 (PST)
From: "Mr.Abraham" <joykekeli2@gmail.com>
Date: Tue, 29 Nov 2022 20:13:39 +0000
Message-ID: <CAOikvbtX13y9cXe+vd11-fxb5BMQHxP-R2ju-NE4AaEGAMxSuA@mail.gmail.com>
Subject: hi
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
 b=fM2wi5GCSslz9CIyZBqJ6Udlyv0ggnfAc0ToenEo3YH4B7+Tl74tXXdEb5EKWkn2Wu
 DIs7Qd8CDoudOH9YwohFYngsDQ9eCPghIM38/LWagmk9cGphExczFuqtUy/bGB9d7Pqw
 YVh9ccSRgw291h59omJ1P20R9/ybbwpZoN3qp0TugbORvlQPA/QDp8KlGHc7ZTTuKkcu
 6WmDWiSHuUHNnpsDYR8ju/sHsfkUFY9wld5yIlzuFpBJnUYYNjp7/Qa+lrHFccgnfU5e
 9nY+xCPnFS5/Yss+sn0ObgtuuAqpMKmiqDcPNqJ0d7KbTPqKIvWDl8Bil/6pXZIZrxTa
 ADyg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=fM2wi5GC
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
Reply-To: mr.abraham022@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My Greeting, Did you receive the letter i sent to you. Please answer me.
Regard, Mr.Abraham
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
