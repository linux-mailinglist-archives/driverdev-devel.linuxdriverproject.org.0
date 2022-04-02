Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CDA4F011B
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Apr 2022 13:34:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B42C14049B;
	Sat,  2 Apr 2022 11:34:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ImQK8plnHw04; Sat,  2 Apr 2022 11:34:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C6E140488;
	Sat,  2 Apr 2022 11:34:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DCEA91BF873
 for <devel@linuxdriverproject.org>; Sat,  2 Apr 2022 11:34:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D3EF5402A8
 for <devel@linuxdriverproject.org>; Sat,  2 Apr 2022 11:34:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T6tL2KIcc_Dw for <devel@linuxdriverproject.org>;
 Sat,  2 Apr 2022 11:34:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3306D40465
 for <devel@driverdev.osuosl.org>; Sat,  2 Apr 2022 11:34:40 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id t25so9180632lfg.7
 for <devel@driverdev.osuosl.org>; Sat, 02 Apr 2022 04:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=+7BYJIsO7dcyDnN6FGAY2/5XLkAKuFDpXyCKoh1Lti4=;
 b=GvVSq7rt9TgiQeIfITHQn1f5+Xrbbbbej1wExkdI0Ln7y1kMj+V9/ALcNIs1S9JMFJ
 xjQfeSNnhg0updUAtSlfJcTnOfv3/lmCWansfwAd5guT5iN7yLrilnOhxvQcTwEOPQAC
 Lsy7n5+UWGI+bzDh6/ZijQt+McjK2R3PMxUaHen2QQQpJTpbtCsUgy0NCgRsmeW31c0k
 E5Z3HSBUELBr5x0VtJJCGhMImhdkA/91btNF13HHv2W9phMbItlnGQYHstSBwoXb5TDc
 YSq7peZ1DsLdGeOCkjgnrmgcsJFdHDgfq7iK6vRXC3tPm9JyS9d1J6hxoDdj+AeIDBS5
 pMag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=+7BYJIsO7dcyDnN6FGAY2/5XLkAKuFDpXyCKoh1Lti4=;
 b=Mn6j0Q7UatGr0MWA52QDQxKCsgQN94eaWTtYahPXYAjQBo4DxNisC4bSVvfM6Vmb3o
 bwnl+QpBUcLERdPic+lCFvs9hgVWRXXtaT6F0ctUlyXRNmeyiGEPs7E7WKKRji480HPy
 aBUoRmzoQoc5cJWGt8/FmgWwBqLYHvZDF1EQIgufphqo5Ww0NL6QvB2ugm7Ht09b3A9U
 YdDTKxZgqA/eePP0mgRsJjABLCgxkz8JLmOtl/Fi4X9cgZ0WGYCoVcfwmTR6plCu4MRM
 Ig9MrSvk3YPkAxXzobNvZw/e6Gm9rCKbPsFZQCvbb5ucKxIk6EXg/nPB3HLybb00IfZ/
 Usnw==
X-Gm-Message-State: AOAM532UF3Gm2UfUBjo2at3Z4jVY5Cgt5dHpQYdmsqUg7fyxw1g1TMIR
 De6lYl1ccCGD+wuBUe9kGb64/HQYtvl+WqtoxT8=
X-Google-Smtp-Source: ABdhPJxm0HXKTTOP62bvhgSIE9cgMvRJohmte7mMbqtj7CNTEdpNBxNy2h1ejlyfJRqX7BiVgqBiRGXwLcVp0OO8U5I=
X-Received: by 2002:a05:6512:3b0a:b0:44a:2e21:ef25 with SMTP id
 f10-20020a0565123b0a00b0044a2e21ef25mr16481813lfv.333.1648899277876; Sat, 02
 Apr 2022 04:34:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6504:511:0:0:0:0 with HTTP; Sat, 2 Apr 2022 04:34:37
 -0700 (PDT)
From: GOLD BAR AND GOLD DUST <mr.alhajiekabah@gmail.com>
Date: Sat, 2 Apr 2022 11:34:37 +0000
Message-ID: <CALxTt=CisKF2yKsPDypvPaXkgz1MKkgBzqCPyJup+kfd=TWL2Q@mail.gmail.com>
Subject: Good morning
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
Reply-To: infor.gold.diamond@zohomail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear frisend
How are you?
I have gold bar and gold dust i need buyers
Specifications and details.
COMMODITY............... .................(AU)
Form.......................... ......Gold Dust/nugget Powder.
Quality/Purity................ . 22+ carats plus.
Finesse...................... . ... 96.5% plus.
contact me if you are interested
Mr Kabah Ahmed
Mobile+228 70823806
Email;infor.gold.diamond@zohomail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
