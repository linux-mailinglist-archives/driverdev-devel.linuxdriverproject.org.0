Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4328424F54
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 10:35:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C5BD4099E;
	Thu,  7 Oct 2021 08:35:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 94fg9xk2iY4A; Thu,  7 Oct 2021 08:35:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81D194099A;
	Thu,  7 Oct 2021 08:35:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A9F261BF477
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 08:35:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A5E7240395
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 08:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FmAf4zTYoDjR for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 08:35:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com
 [IPv6:2607:f8b0:4864:20::741])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E40CE4018A
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 08:35:13 +0000 (UTC)
Received: by mail-qk1-x741.google.com with SMTP id c7so5251599qka.2
 for <devel@driverdev.osuosl.org>; Thu, 07 Oct 2021 01:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=oyiOPB8yoFVw+K0oSEZQEOx0yAWvV5GXd13m7K9yts8=;
 b=kE0Ovs4gOE/94VtsxNDVv6A4HnHNwP9c5+zqmK24P+IFt/GDW0tZeBWCgirzys1tYa
 a/MNJaKzhksOgwSEhdwaL7coCpjiwlX32s2vrM1qtQxP6VwoV3MDgUHBkgCMJrM1bxOo
 6skB0lIVWCrkUuthsbb0B/Ita1xVVMbTRFZjgn0hiwjGKe2XWiN7hdP0gpktcQ+OYyHL
 2pfqlchtDADpM07rlFGBAq8cdcs+g34u5wZEoJEqHJJ52TMQdrwAUBvWhsLjy0sIJY0a
 V+/lRsZUPjAMBsdJ7VbvJZp09ngF9Ktq5LBRtjCsLXSp4PFi9hnuTQVS+x415Pz7RNZZ
 JruQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=oyiOPB8yoFVw+K0oSEZQEOx0yAWvV5GXd13m7K9yts8=;
 b=u6pZeLcsp32lnvmQ1etd9HMYRh6aILlMxup7alQH6+xm+9+Eel5aiS/WCNVhJUyXv5
 heXesF1R4ocv3pX89q5Df6Lf9/nb1A2fpNTaLcyMA+auFlpT3O3+4GAZkh/HPs+AhTU0
 3WGXKuqO5HhMSy9hNF0YD+RWK+lapXpcy+YyZ+3xIaloGuUl/NrvQn9kqewxb3iBJmMU
 XBaWFjo6oYaR3bbZYFxdJMoI9rNV3SwejnVmYvhuVT79ieXtxcDVLCvl3o2EtnR3HfGb
 PJ1BnEWZJD0YsJOOXOqv7Ogddc1VNjSMD2jK9O3yRmbdjKv80bxs41VQ6Adm/GYmjYGx
 9gLg==
X-Gm-Message-State: AOAM533ktlv9tvHvKsyHuEGwowkeimhhX8ClUdNk9p2E635lR3f65rus
 iICdmKwUnZxFnj8LT+pWOJ60gFZt1zijuxEGTAk=
X-Google-Smtp-Source: ABdhPJyftVULkBMVqHd5ip0zvoNWKxw1558KWjJCzoquIuP+L/zdy4W1HbXZY99hmjMJ77zUMRXmzzXRnz+Y5w0CxPs=
X-Received: by 2002:a37:44c8:: with SMTP id r191mr2285215qka.507.1633595712538; 
 Thu, 07 Oct 2021 01:35:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:5181:0:0:0:0 with HTTP; Thu, 7 Oct 2021 01:35:11
 -0700 (PDT)
From: Lila Lucas <lila.luca112@gmail.com>
Date: Thu, 7 Oct 2021 10:35:11 +0200
X-Google-Sender-Auth: 6jILO1qKlUN8T-sHdNSZjvfPIv4
Message-ID: <CAG_YCqjY=O_o+taRfA4Arft86FLPMDCrKxHS4Xk7_50gkm7p-g@mail.gmail.com>
Subject: HELLO
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

May the peace of God be with you ,

It is my pleasure to communicate with you, I know that this message
will be a surprise to you my name is Mrs. Lila Lucas, I am diagnosed
with ovarian cancer which my doctor have confirmed that I have only
some weeks to live so I have decided you handover the sum of(Eleven
Million Dollars) through I decided handover the money in my account to
you for help of the orphanage homes and the needy once

Please   kindly reply me here as soon as possible to enable me give
you more information but before handing over my details to you please
assure me that you will only take 30%  of the money and share the rest
to the poor orphanage home and the needy once, thank you am waiting to
hear from you

Mrs Lila Lucas.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
