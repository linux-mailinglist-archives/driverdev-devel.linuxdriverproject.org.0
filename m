Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0B92CFB94
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Dec 2020 15:47:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 52E7C86F73;
	Sat,  5 Dec 2020 14:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d4elh2K_8ykz; Sat,  5 Dec 2020 14:47:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B1A786E09;
	Sat,  5 Dec 2020 14:47:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1ABD61BF3D1
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 14:47:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1737D87782
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 14:47:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c9PZHtlB5O1j for <devel@linuxdriverproject.org>;
 Sat,  5 Dec 2020 14:47:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 739458777F
 for <devel@driverdev.osuosl.org>; Sat,  5 Dec 2020 14:47:30 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id l11so4753473plt.1
 for <devel@driverdev.osuosl.org>; Sat, 05 Dec 2020 06:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nXyfW/MOF1GC7gFH6eMrnSd2RczMd1PKQk2yaRcPi1g=;
 b=NUP7VUBboQYlYfKlvt1q5hm/95Dp0qy9yROg5ye2pE7IOT5Qu8E0iSdta+kqip+dZ8
 qnrrhhI03C+5Zldh0suZAf381vsBWP5gL7K126mdLr9hwhol7Gdw2YOeP+Yghu5N3TuK
 kK5qdJ23UyUixbIRYQuoXUJ3tMfZVxXbHrHJJVrgVqWEWPOUzaiQZN3pj/kvsNskFDyr
 XttB9Qhq0DM/bKb8xXYNhA1ua8KuaXP3ufzCiLLS+iiXUbL7fiKOHYFGK58TMPrPD9xh
 bueWEhfasB34+9CMZcL2zaY0/AywEoqF0tq1dBCNTbs/7dO+3yNcEOooswCThBrr+Vrc
 tW5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nXyfW/MOF1GC7gFH6eMrnSd2RczMd1PKQk2yaRcPi1g=;
 b=j/9L+6WdjV4kvDG6F+EnixhrpKUseu3ZB9em+4p0ROGd6B1RI9HM8XvcIiobh6Y2aW
 xw1TTDq9ODzZq4xP2lDM0xm0sBpuVgjAubniWWfG2nF8tE/IzzsadZF7EIdxog0Xc0UA
 /wjLVSGhDUtwfZRodmmqVjTnihDPSRTXGYkTT9ilXB7vu6s+exmCaWAHvl3sBNZK+zxJ
 NTntRJx6mCEqg4k6CuPdBWNQBC6vPPrIegDpokxpji5ZJj2LtCzkZg9Ai4WuzLUsDPw4
 n8rGOxKRlwriP4erJdJxP7FuQHlEys5ody6CWFH3Z6P3G6380DheU7hHESOm31l2bM6k
 rnpw==
X-Gm-Message-State: AOAM5317P3qyBPdN4DNGdwK82RT4pb57+s+V0q/cGk1c7bGv0ucjpwbv
 zd+/P49kb63mN4IirIdRoXIEIDjkwc5/Dvnku9M=
X-Google-Smtp-Source: ABdhPJyQ8+KzBh38nM1VVwl++fObl9pwdTRvDAQgKZhdgmR8gwVtB0RBPVqu+vMfPrkTLAwbcR/rrhj8hdKY8OG/5uk=
X-Received: by 2002:a17:902:324:b029:d8:fdf3:af34 with SMTP id
 33-20020a1709020324b02900d8fdf3af34mr8179239pld.70.1607179650020; Sat, 05 Dec
 2020 06:47:30 -0800 (PST)
MIME-Version: 1.0
References: <20201205103827.31244-1-wanghai38@huawei.com>
In-Reply-To: <20201205103827.31244-1-wanghai38@huawei.com>
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Date: Sat, 5 Dec 2020 20:16:53 +0530
Message-ID: <CAAs3648wsmiJw43BAfigLHC_Sr=9Coubk9b=na0dVNTtNwFqXA@mail.gmail.com>
Subject: Re: [PATCH] staging: greybus: audio: Fix possible leak free widgets
 in gbaudio_dapm_free_controls
To: Wang Hai <wanghai38@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, aibhav.sr@gmail.com,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Dec 5, 2020 at 4:02 PM Wang Hai <wanghai38@huawei.com> wrote:
>
> In gbaudio_dapm_free_controls(), if one of the widgets is not found, an error
> will be returned directly, which will cause the rest to be unable to be freed,
> resulting in leak.
>
> This patch fixes the bug. If if one of them is not found, just skip and free the others.
>

nit, typo error "If if one".

> Fixes: 510e340efe0c ("staging: greybus: audio: Add helper APIs for dynamic audio module")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wang Hai <wanghai38@huawei.com>
> ---

Reviewed-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>

--
thanks,
vaibhav
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
