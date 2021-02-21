Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA64E3209A1
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 11:45:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A3AD48713F;
	Sun, 21 Feb 2021 10:45:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kwkk-PDLCfE2; Sun, 21 Feb 2021 10:45:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0905B8710F;
	Sun, 21 Feb 2021 10:45:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 54D181BF40B
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 10:45:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1E54F8374F
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 10:45:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hNHH_KRmZ-le for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 10:45:39 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id 19B9A837AC; Sun, 21 Feb 2021 10:44:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 96B588376E
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 10:44:51 +0000 (UTC)
Received: by mail-lj1-f173.google.com with SMTP id e8so7632411ljj.5
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 02:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=STQfoSu8Rvq6MxU4djWNXK4UVlp2NhVlvz/bJOuJaYY=;
 b=i4Mq6YVaJ26zIo120j9W13hsO/xTTMC1YxfPILWPUfHFlOk4bwRk3SQvlmQdCD11Pn
 s/uSyTXMW7f6T6Da8StjpTrkTLeIyi/3Oq85avb/cj6CUaODdedYqEuvx4HCbvkod89b
 zQ1jVLIt7ob8r3h1N/MzTEtN+Izl8iYbX65PLksYPdSdifJOlP9iHb7KhxBsvU6ejcbe
 xdccCVbNtyc9lLOxLuDDHPXXC1rK77LRCvBM4pmQAZuo9qlUOrJeKf9Jyhqqv9LMu/NZ
 VD+7Vyn3Ap+DIQkJm67xrABAhyxu4miIKLD/phwpJgRp0v5GW/rMaVqQ6OVtQeURBYE/
 mQkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :mime-version:content-disposition;
 bh=STQfoSu8Rvq6MxU4djWNXK4UVlp2NhVlvz/bJOuJaYY=;
 b=I4DqzBS762LmHI8//ZiXtvj9GGKmx2xenx+1F8PZBWgscacPa8tBJlFJ6Oq0VsdM6o
 Gdg8Hl+QjOXPujNuG4VDVsSSh22qF2KAzK1PG3f2esQAkq5QnfdCsfwPpybo0N9SP2oZ
 OslLMDtR/tIRlwSn9qZiVkVIi2ZpnmazTuKbaN1BiEywIRf1gUxnxkLCMtR8LleBBqNp
 X0jI9k99NLTvcowZlQxKZanOV6YcOuCYZBiKG4xr7fwg5CfIILGCeBRgusBRE+cnif7r
 KX67y3zmD/Xhi59jGWle6D20Y6EYNJJNYWA9PLpr7oSp3aDnX81UrRyMfl/VPirj4ypg
 ozkw==
X-Gm-Message-State: AOAM532iGugmenLUYFuFFGphx8ZEl4ywZgz5hsYwFI6RpmQ8NB4NvguX
 fruaW/UtmO/5JGd5VHWYSow+YGBFHAJzMw==
X-Google-Smtp-Source: ABdhPJzaCyp5/09lYkRIHrHIeSN4vDyRBkoJsxZ8R1znH7pifn0NYt+tlvkQ0XFYNlkl54JOBBXV1Q==
X-Received: by 2002:a2e:5719:: with SMTP id l25mr11396464ljb.76.1613904289154; 
 Sun, 21 Feb 2021 02:44:49 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id t19sm1519248lfr.106.2021.02.21.02.44.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 02:44:48 -0800 (PST)
Date: Sun, 21 Feb 2021 13:42:58 +0300
From: "Nikolay K." <knv418@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH 2/2] staging: media: ipu3: code style fix - missing a
 blank line after declarations
Message-ID: <YDI5MtxbNLjpSHwY@msi.localdomain>
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
Reply-To: YDIX3Q0U8/PcVWgN@kroah.com
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I can't find any change in struct imgu_fw_info layout after this patch.
But warning is strange, because declarations don't actually end here.
So I think this warning should be suppressed to reduce noise
in checkpatch.pl output.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
