Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699C03E5B44
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Aug 2021 15:24:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E12804046B;
	Tue, 10 Aug 2021 13:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9jMUYONwW3tU; Tue, 10 Aug 2021 13:24:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE11A40475;
	Tue, 10 Aug 2021 13:23:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B23991BF5A8
 for <devel@linuxdriverproject.org>; Tue, 10 Aug 2021 13:23:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A1336404F2
 for <devel@linuxdriverproject.org>; Tue, 10 Aug 2021 13:23:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hbAkIAT3viQX for <devel@linuxdriverproject.org>;
 Tue, 10 Aug 2021 13:23:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com
 [IPv6:2607:f8b0:4864:20::e34])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 124C1404BB
 for <devel@driverdev.osuosl.org>; Tue, 10 Aug 2021 13:23:44 +0000 (UTC)
Received: by mail-vs1-xe34.google.com with SMTP id h7so10985527vso.13
 for <devel@driverdev.osuosl.org>; Tue, 10 Aug 2021 06:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=2tvLhkad0w+Mh63WhnFJkmRFgYsLXsJmUqGVjzUAFIo=;
 b=rm6ErH+o7vX+c04C/CbhXcRUk4Ha6K0tJYOw1AMqLoXkju2uRibpBxuOyQjro5zGmq
 bdPfruQcAFuGD0d2WNt8Hr6ihmaca+Ajoghj4pt6Yp2O7F2RnpFPXfSC6GVHV0bjbumr
 vouiyJGVE/SKVxfE76XYdRjtv7c3Kh4I6kb9/+nZ26mEC4ynCucC4aFM7hCXR9AHlrml
 aLmJyqpGabAFUSuiBMzSxLTE/PutK11daKq0DsCL667ypfeFuHFhxe7LgOjOBKSKDQwN
 ivvnyJ6/qHllYywA+oATCa6HSoxEXfMzCEbIV9q3zZfsOyaHDag54rZUCTs5H9MXwUG0
 fDXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=2tvLhkad0w+Mh63WhnFJkmRFgYsLXsJmUqGVjzUAFIo=;
 b=lif4JghgG0O6Kz+ws4v9q2hn9QAaaTs5xdmwzOH74LB5/iKZ/+K/vYXfWOlpG028vX
 CEZCBQx6Nv2xigH8MFjTz10TKud6Ik317oM37VfVi7ryfrtrGPkMHIsCmnP6a7zXL6+2
 ZEpRG1omlEKlhMBpjG0Xrdk+JXiH6lId8lmrDw/2R/td61WrKZr0KGULuD3PKGY/mTom
 ji5P1FKjOI6g0BcvglLU64/MvW6wgeg4MZ9PPLFQRaqUri8CUpveAZ6YoLjRwAzUMNkn
 qi2EqWwHIVNpfnAqn0m0VamZhbXiaWy+NSoqZML2Ads0seoNsoCfHpX0xULBKWnYE2IV
 pXpg==
X-Gm-Message-State: AOAM533GW+vCPgqUTmkaaiza6mYUqMgScIHoGOp5Its367shcOGPBTcC
 52t3lc+tMI2Q+bBxg3ON97mZUakRhQ4QZ8N4BTo=
X-Google-Smtp-Source: ABdhPJxJKc/P50wzChJIjv3M0xdJjJcin4NLNB8V7mh1pQyg1lVuqpM+XKD2thiO4mHQ8JO20FQ25quj6IahUx7je2s=
X-Received: by 2002:a67:1c05:: with SMTP id c5mr21512357vsc.25.1628601823883; 
 Tue, 10 Aug 2021 06:23:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:3903:0:0:0:0:0 with HTTP; Tue, 10 Aug 2021 06:23:43
 -0700 (PDT)
From: John Kumor <owo219901@gmail.com>
Date: Wed, 11 Aug 2021 01:23:43 +1200
X-Google-Sender-Auth: y6iMVyNCdiqq6ABsv9xqufMouPg
Message-ID: <CAHdg_cSbkGsj4DHC_d0Yby9Lnah7Kc6m4rOVFX1CJXhj6vkgzw@mail.gmail.com>
Subject: Urgent
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My dear,
Greetings! I trust that all is well with you and your family. Did you
receive my previous email?
Regards
John Kumor.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
