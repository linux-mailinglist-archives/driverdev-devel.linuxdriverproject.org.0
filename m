Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 029642956DA
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 05:37:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0DFF186935;
	Thu, 22 Oct 2020 03:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0KSbuH8A3Jkc; Thu, 22 Oct 2020 03:37:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 252A7863BB;
	Thu, 22 Oct 2020 03:37:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0CCC81BF2FC
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 03:37:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 07A5686B1C
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 03:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gnTAaKm8Qo1S for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 03:37:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A23C886A98
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 03:37:06 +0000 (UTC)
Received: by mail-pl1-f170.google.com with SMTP id 1so236871ple.2
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 20:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=Jj+/ATEWrpejA1zhADYsUbC64uFN2/AM9ewgujRTYJA=;
 b=dgNuxyUuGgLzgnzAKxYhI0g0JDl0QFk3rMA2Aaz5gQ1Cq19biNDFjAGspkwP4NYrUi
 y7ZpBeoomUgOanwjBwPpI1K/IbTKARcvZwZSE1xhjswjTWrC51Z6zeoeMtP4bDKK9laB
 EK6Cs3iM7ciyP3kvixm25xah2okJMG27FehiSPhgaKLR0Pb4uTFV4oZhIVKNRJHfhl6R
 +AFPF5z07yjHgBTRcQP1F4jP5DgPiKZ+HafULS6V/Fx6rv2i7YWiXG9VdrAiCQCUPMUN
 Q3ErGKFALPMP9bHS7lPqyyziMPB5CVNvPIUBO3Ins/8OvA8UAg3piPZOVZ36t7+8LHpS
 /k6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=Jj+/ATEWrpejA1zhADYsUbC64uFN2/AM9ewgujRTYJA=;
 b=NkIAfN2pWBdnPIFTeHzMIwqp6FX55Vd2KXL9R+M3dbsH+CryBOOfj4KnIZ9cBBiBw7
 v0hWZv335GTERLDlAXdlRV8eCMg0tliqLIB95H5v0N74MQMsZeYQDeL6A09OUYCytKAi
 yNK1Dla7R0uVGC4N3/PwxWI7XWCIPy8EWOakjr1JvemCxjztJHDEhPWL/hSJfArntshH
 y2sIvA9zdN/7MoXxLlMIU+xg6MQy38d7Bd0kVMaLjWcZGa6r6KyoufJELNyfTrhwbJzO
 fhpaPmgEDwpE4+mKI6Z9uYypKX27R+mFBsUXEPXrCx9FDzh/AdHv5bo/jZ8sD+zvHpS9
 03ig==
X-Gm-Message-State: AOAM532gFsYT5/NLzlzVkpjZy29VLCXuwp76bcgICWzw+qnJYhb6ZfYs
 DWnG9p/2vkqd6A8BExGgQMw=
X-Google-Smtp-Source: ABdhPJzN/R4cgNtVjZteWgh0cZvG3QXw8+nEcKDmXYtlGt2pFLAgjkhl/bYmhXwuzvgTVEgWmhu0lA==
X-Received: by 2002:a17:902:7291:b029:d5:cca8:aa55 with SMTP id
 d17-20020a1709027291b02900d5cca8aa55mr558775pll.20.1603337826267; 
 Wed, 21 Oct 2020 20:37:06 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id p19sm176893pfn.204.2020.10.21.20.37.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 20:37:05 -0700 (PDT)
Date: Thu, 22 Oct 2020 09:07:01 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, vaibhav.sr@gmail.com,
 mgreer@animalcreek.com, devel@driverdev.osuosl.org
Subject: Clean up query: greybus/audio_manager_module.c
Message-ID: <20201022033701.GA329478@ubuntu204>
MIME-Version: 1.0
Content-Disposition: inline
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

Hello,
I am reviewing the file: drivers/staging/greybus/audio_manager_module.c
and have found that there are several gb_audio_module_*_show functions
that accept "struct gb_audio_manager_module_attribute * " as a function
parameter. However, this parameter is not used and should not be
necessary. Would you suggest cleaning up such functions.

Thank you.
Deepak.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
