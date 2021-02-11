Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C15F8318CA5
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 14:56:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 41F9187430;
	Thu, 11 Feb 2021 13:56:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Il8IumED5uQZ; Thu, 11 Feb 2021 13:55:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 637EA873A1;
	Thu, 11 Feb 2021 13:55:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E74FA1BF575
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:55:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E205F873A1
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:55:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id INgY6fJsuIwd for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 13:55:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2646F87388
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 13:55:56 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id l17so4084630wmq.2
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 05:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=y7BeZ+/BUSXUp6ZnHJ28TSsR2UmGZCVLb/+1NBYbAyw=;
 b=N8HcYVOxTxPMgLuiKxIBdk3DK0joq313BIUWl9490BokNBGRmsQgyrYNvtVGa2pEgD
 1XZZu4inu+vS25LtFGDfaqR/F5K1DRjqRPND1P6Udfiq0VhlxK/QJqFkHTXAVm4ZFjYT
 SKW4OgWdigbS1xz9WBWWmJPs4HeOG/fLr+JRzjNCePs2FHW2aomVR6IzkpM1wAtjNxu0
 Oy38fZS1fYTDw0SDvwq0f4tvdY6YRZzh7P7wtN2RE9FWM+erBHsPTvrT8Yq1QZ2mzrnX
 zRnoBseZYD8Me+O8pJaL4SpeZCn00YUrBVBOCtDMEhl3nqyLNLVLP2pLALn1QTalsuIa
 BtBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=y7BeZ+/BUSXUp6ZnHJ28TSsR2UmGZCVLb/+1NBYbAyw=;
 b=GetdwWgvXv8fQRDsYyO8dnR7UPXSKRKoMfpr5ZvLx9Djf/InDHB2RNy4Dt2DBrd+Tb
 zrTtatO9unJQ8UTo33LFb5xpvKZB9iH9FXjFAQ4lzjJzzd709Lb56091y5G3/yoiM0cK
 9CEUwFhLLPIqsNsiM5DkFlJmuIlBAAQ6nCDZwTC4kqqpozongJmLNqS1i2hIzXrX+0xJ
 RUW+sigMHE4neNIVRT5qykkuQUSTYfNyOcejVxz+XTTRpDtR07TE8VMgDisoGDKuqVU2
 3C4we9V5UqPgjeG/HsyWUieFBvChlXg/9kXeIshw+T0nbPGkkdU0AfR8y7f406UTExe7
 liaQ==
X-Gm-Message-State: AOAM530F6v+BoZlXzh18GGzft/3pU4KGjF8ZbIr603hFM0wW2AkA5O51
 Ayb0jLCzZeDkpKK3MGg5oeE=
X-Google-Smtp-Source: ABdhPJwJMeSyjXEUpaFMgyDcAVMEN4qVEfSFh+iGLxXI8SrU1ayXcXKvXp8uO6xQOOx3NLKR6VGhTA==
X-Received: by 2002:a1c:f70c:: with SMTP id v12mr5300102wmh.77.1613051754466; 
 Thu, 11 Feb 2021 05:55:54 -0800 (PST)
Received: from LEGION ([27.255.58.138])
 by smtp.gmail.com with ESMTPSA id l7sm5196595wrn.11.2021.02.11.05.55.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 05:55:54 -0800 (PST)
Message-ID: <4d1d23e7798fa339c7ccc1b6046130292a8beba1.camel@gmail.com>
Subject: Re: [PATCH] staging: wfx: avoid defining array of flexible struct
From: Muhammad Usama Anjum <musamaanjum@gmail.com>
To: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
Date: Thu, 11 Feb 2021 18:55:50 +0500
In-Reply-To: <6775209.aHiZMU1OZ3@pc-42>
References: <20210211105026.GA45458@LEGION> <6775209.aHiZMU1OZ3@pc-42>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


> I think that "#include <linux/ieee80211.h>" is no more necessary.
Good catch. I'll send another patch.

Thanks,
Usama

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
