Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EA1514D91
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Apr 2022 16:40:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0350F4040D;
	Fri, 29 Apr 2022 14:40:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QU28Z9mWJFhJ; Fri, 29 Apr 2022 14:40:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B846E4000B;
	Fri, 29 Apr 2022 14:40:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB0C91BF2CF
 for <devel@linuxdriverproject.org>; Fri, 29 Apr 2022 14:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E6D1E4040D
 for <devel@linuxdriverproject.org>; Fri, 29 Apr 2022 14:40:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qbRkyNecuNNp for <devel@linuxdriverproject.org>;
 Fri, 29 Apr 2022 14:40:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 59E4E4000B
 for <devel@driverdev.osuosl.org>; Fri, 29 Apr 2022 14:40:20 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id c15so10773549ljr.9
 for <devel@driverdev.osuosl.org>; Fri, 29 Apr 2022 07:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=R7QpCi0uubcHNtRLuTk0itjUJtFCL+Tl/Uus7kTjtaw=;
 b=pAbET4vb6CiuOONpHDI9RT115D9X12crKsxvLvp7OtKV1Jo9KGZFjoNooHwn1AGTdF
 U7HuDAlhIor1ygYYvNiTh54b/I3PRPSJXJ+DZiUOB9OOLyKGO1SuU6HcyKS3c1AWk1dT
 GmJmzAlHXbdjgGWMfKDiyp9g62/RmSu0Xsn9delFHfHRgyM/aAWgNBSigeIl5Fn9hfz8
 cGLL6I5dpKGWXAb52Wyxj+KsnzaylhVoLWeb9eUKJuQLGMVFioLfw7LXgHtRP+QGp6X+
 s3hFHNw3uChzjmi3qq88oZNY1zGb7eI667uaLdKFjoXs/ftqyXANQrocnnCxqT59q/xV
 oFmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=R7QpCi0uubcHNtRLuTk0itjUJtFCL+Tl/Uus7kTjtaw=;
 b=uCoKQIrHe4xXhhA1+Md8H+4IubAfVH7D6JZ45CTjbTti3kKL3ySnBiNrJgP9y6fXUd
 KZRAzWUbtWVAnXrwThHK3KS8dMd3QNLZYHTG8MYP57HnnnImvPK7oZ4g+uc+P/GnejmB
 I49hVey1IDPI5e05Ee4BX5pPOiHf/jKnGTtgHfeP/PB0hjTHBohadDxUru5DbD8iJm+G
 IoFlneC0/mImVx3yCTPoKkW7TMESA+Sxz80bRwodlpCnnseOSDSSnBRFNaZk9NbcSPXl
 NHm9Ve1dKhgF0KMYGPK5dqrUcCLV+uajUIe2X1MraviKKOawrp0NpZbsHj/L7jJR3htX
 j1Ew==
X-Gm-Message-State: AOAM532jA6KZ34Vj+tx6TOgM5oJhIAu6kzN5QymxSrel7MpA31e5CLWp
 iYNWNVgaepBWPbZviG0GLOdnlwXkOgXFh1iRbmE=
X-Google-Smtp-Source: ABdhPJxAnoEfalRIK1ImG7b0+PxC5GO9PU5lAyUmVK7tq2ceu33R3YpGNzd+L6cAsVg49Is7lmMamrCKokAs1cgEBzY=
X-Received: by 2002:a2e:b5d1:0:b0:24f:331d:f9b6 with SMTP id
 g17-20020a2eb5d1000000b0024f331df9b6mr4946721ljn.302.1651243218227; Fri, 29
 Apr 2022 07:40:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6520:4290:b0:1bb:b736:ad43 with HTTP; Fri, 29 Apr 2022
 07:40:17 -0700 (PDT)
From: Kristian Daniels <kokousamira@gmail.com>
Date: Fri, 29 Apr 2022 07:40:17 -0700
Message-ID: <CA++5zG1OrUFBeTYSW8J-o_3Ebw=sFrH8OLjdgXd64a7NF9RVXA@mail.gmail.com>
Subject: Hello
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
Reply-To: kd2020tg@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello

I am Kristian Daniels from Wales, I work here in Lome, with the ORA
BANK TOGO. We have a deceased Late customer who happens to share the
same last name with you and all his paper documents as relative, He
left an opening huge sum valued Two Million Nine Hundred Thousand
Dollars with the bank, Which remain unclaimed.

Reply back for proceedings

Kristian Daniels
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
