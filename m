Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E63457E00
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Nov 2021 13:32:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59E1641C20;
	Sat, 20 Nov 2021 12:32:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LC2W95fXpEdJ; Sat, 20 Nov 2021 12:32:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8310C41BFF;
	Sat, 20 Nov 2021 12:32:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 74D0D1BF36D
 for <devel@linuxdriverproject.org>; Sat, 20 Nov 2021 12:32:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 646B641BFE
 for <devel@linuxdriverproject.org>; Sat, 20 Nov 2021 12:32:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0_sQXYnKGOIB for <devel@linuxdriverproject.org>;
 Sat, 20 Nov 2021 12:32:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B266E41BF5
 for <devel@linuxdriverproject.org>; Sat, 20 Nov 2021 12:32:34 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id s13so23110322wrb.3
 for <devel@linuxdriverproject.org>; Sat, 20 Nov 2021 04:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=w2dLnl5hsLVKZTBAdcVFnDnMtM7+guW1LU+8LG4nir0=;
 b=cQ4sa0RLmxPwPFn1iQHtDPNnu3wxt85tlCuJmDnpCjgmGMxx8i/oateruVYQAvti5I
 A5qE92dvGm+x1YP+CbK5Tq5OhtXE6vNimcHv6le77OfesyWmtCYZNXHE5+IG0f8L2bT0
 Lci51QRfH33/4FHSDCeiE4klj7YMLnup6Z9AxKwmd8q2vBCk3OtwmaYj1bSnn6G8m6GQ
 mxOZ3RS8pA3iEAA55aU8/EBq9h3Po0DLytgYovDVsFfbT36OHdQaUGwPLJ3lG01hFOha
 WpkBpT9gzq2iO8UbGhiS6xFhyGI26B7QXEWnQJX1hxeVH8W2rTVUYcpRy/W1U7h8dL8Y
 peJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=w2dLnl5hsLVKZTBAdcVFnDnMtM7+guW1LU+8LG4nir0=;
 b=tbwxqekwcEElc5pegyIexUtC7Xdl/rh6zLNsL57V+N2jBywLMluKV/Id56+7U7JWMx
 cQNAcJ/bL/JkGwwge0ilAmq72uvgvcqRPzsiqzS3rJzaUGkddS5TJjQUtrPyDfxTwg31
 jaVWKU87rB+m03alkDiIkvfc8uDKPkKTWizwHrKNgmEJh75xNPAAo7GtXop0Nciy8coW
 pBNbUgLnnGEGHn1fDhbazdfsKn4kitH/YQOJFUklxE15ghScfTrub14cKog5tWRJeP5k
 d0MkaRDTTJE8bXO1dbNdGFJYfmoDuTwynW+OaeQi2aCOuwJ34lH0woU/d0ALi2jdX6zY
 gEjw==
X-Gm-Message-State: AOAM530aM26Yy9z5K2Egis4M4TpBGUtrbjn6naGZex+NeZkQ//Z9h10Q
 g9v/Mff6fPFpjgvb7SSCbDK+GDMj/+mZvVUjvxM=
X-Google-Smtp-Source: ABdhPJx6LRHkcC/2nzZUXHHyWAv8qwOLcVanyMaZO5SAGCaEWZSePdj6KgMnXbsAIfz8H/8CWMAmDV2d6TwcaPqmMOI=
X-Received: by 2002:a05:6000:144a:: with SMTP id
 v10mr18155356wrx.315.1637411552709; 
 Sat, 20 Nov 2021 04:32:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:adf:f989:0:0:0:0:0 with HTTP; Sat, 20 Nov 2021 04:32:32
 -0800 (PST)
From: Mitchell Vivian <duplanmartine36@gmail.com>
Date: Sat, 20 Nov 2021 12:32:32 +0000
Message-ID: <CAO-XXH5BAMnqsibuyWBB1vSqWFvEU_Fm4N1zBDf2pLptoHQP0A@mail.gmail.com>
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
