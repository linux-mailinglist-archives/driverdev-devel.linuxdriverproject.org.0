Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C9E457E30
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Nov 2021 13:34:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA1BF60746;
	Sat, 20 Nov 2021 12:34:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ovn_c0gnA10m; Sat, 20 Nov 2021 12:34:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 702DE60008;
	Sat, 20 Nov 2021 12:34:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C94A1BF36D
 for <devel@linuxdriverproject.org>; Sat, 20 Nov 2021 12:34:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0CA6480DF2
 for <devel@linuxdriverproject.org>; Sat, 20 Nov 2021 12:34:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dFWz-FQVbd6u for <devel@linuxdriverproject.org>;
 Sat, 20 Nov 2021 12:34:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6D8A980DE1
 for <devel@driverdev.osuosl.org>; Sat, 20 Nov 2021 12:34:18 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 g191-20020a1c9dc8000000b0032fbf912885so9579269wme.4
 for <devel@driverdev.osuosl.org>; Sat, 20 Nov 2021 04:34:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=w2dLnl5hsLVKZTBAdcVFnDnMtM7+guW1LU+8LG4nir0=;
 b=Fg0CuYYkyt0hZtxEaL3pzh0wmxFN/BDqDvJITI1D07EsGGgN8PZtfHGDuXTh7/BoIl
 qVNJH9zXnG8cNi2LJMLF71hiIrDCE84586190GfTLhvhTykKIh4u2rbstY72IJ2bwxdi
 dD1A4IvTr0xiNtXbl34OchcNTBgwtuJY6Bjfg1D2EI5sf1RrQ+sb29ycEh2OqGIrNIor
 9ZgC+8bGry8Ek/GHCpQ99htcECmIpz2LX84bJAMeuv5rRWeUbFN4BCL5K+oO4sSjngOB
 8QNuFreM8gT309f4IkX7URhAMyYexwDutkEXDHBb6UE/vMNjPjAcuLVnaWzcjl7URoeu
 P8/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=w2dLnl5hsLVKZTBAdcVFnDnMtM7+guW1LU+8LG4nir0=;
 b=xh5P5M0oawoFXmD0pKKSbxOqG7Hx3UdelwiixToD1dGozxmKMB7Bqn5AVK4m4nYMX8
 QPv5Vx+pWUiG1MpXlxCv7tXLopGss9e1E4+pUD3BmjP0PJmDlLdaVtN8tW0gSnUOpryH
 NqmOAnB1cjtzM48HMRZSr1QyCgSRxz0trjkBCEmwYKKFhDAzHrcCqfXzPU9EsTmwpeTT
 xy35wgM6J5L3aEOqIxa1s8wxzWtqWraSdE2aehA46tODwAbo4VeMtVZdlw3mESwl4oF1
 qwwpAu/Rq5ITLTj7jDCUu9I+QPh6GT7E1sHYRi/1OjCo4WAbcPlToPdXRs/3TkHt3Gqg
 CusA==
X-Gm-Message-State: AOAM531YgFSzwOaJfQUW99LdNd+0StHgDHrQBFyRM2l6YcAOvqhwEtdQ
 KLL68I296OlwuVlJGrUpJLWeQ3WFmDcm57xdBjg=
X-Google-Smtp-Source: ABdhPJx9lg3O3sAF2QNHrqcxWsGvQFfQfiAtfif8DZ5B4m8o6/KXkYAJ/QEnjRn5/uYIqbdMP8Au276Y+aqkPaELun0=
X-Received: by 2002:a1c:5409:: with SMTP id i9mr9522973wmb.146.1637411656042; 
 Sat, 20 Nov 2021 04:34:16 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:adf:f989:0:0:0:0:0 with HTTP; Sat, 20 Nov 2021 04:34:15
 -0800 (PST)
From: Mitchell Vivian <duplanmartine36@gmail.com>
Date: Sat, 20 Nov 2021 12:34:15 +0000
Message-ID: <CAO-XXH4V+dUpgGpmCiApBhW-zaz1u6CaEOyFDdkQsbAu_nkg3w@mail.gmail.com>
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
Reply-To: mitchellvivian01@gamil.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello

My name is Miss Vivian Mitchell. I want to donate my fund $ 4.5
million USD to you on a charity name to help the poor People.

As soon as I read from you I will give you more details on how to
achieve this goal and get this fund transferred into your bank
account.

Thanks have a nice day,
Miss.vivian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
