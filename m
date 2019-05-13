Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5B41B562
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 14:00:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 677ED85653;
	Mon, 13 May 2019 12:00:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OFYDv_8_Ic5W; Mon, 13 May 2019 12:00:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3CAB685644;
	Mon, 13 May 2019 12:00:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA3DA1BF852
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 12:00:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E7434861CD
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 12:00:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id biJK3rW1x+rR for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 12:00:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D3C5584607
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 12:00:30 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id y11so7081019pfm.13
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 05:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=p3WkRupLQANIn+eKZSEzZINagFb+f491TtMUB8rusGg=;
 b=N+++fRZ20jobeOpyLHYLAVEpUKQjraWab8bLt6j5ZOHrH4gRwoiEzPEVePueOg4EkT
 9aVhRhMNDREwNEbaja9OpqLvsmrwBITjfZtuZXZfVsGrxiBI5qlSlGtA8bTvgYsX80KS
 B+Hy3tLCB6h6eCpC1xwUwRjx3yvZPN2lf3v3ZLVVBiv5sT7Ty37OChUzb50/4pDZrLMq
 IE7CVxIDLsxzQNwTAEJyhwTyRmVumeHP1uFD1yumIOTTox/hWWkAOvidJivPGFVECEok
 h/vm8VxlFnVl0yawuGVtUryQDBrwPXuS1oTAGBafBvVx/JAv2fvyytV/jVpmYh/Ndcd7
 xm7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=p3WkRupLQANIn+eKZSEzZINagFb+f491TtMUB8rusGg=;
 b=tytpO1QbYP2LyO124opQZOtFW3OmD2EdcV9f0wuEw6H94tMMFUhACAZozfPyiWtKAt
 q2oZO+UzZa5cG5dsWCBiRaDljTjHo/yVwROjJCbHy2kUvRa8M0QWWf2dX1inKvZWACGb
 5WD9Dx0k1Y7/qFwM6sceqnRdoPi0q/4sSC6E9/xvVNZCLrm1/kkCT80b7QBfnR9FLAhQ
 +7dSO1GdSRHX/hrZfn4ear0AH9YuK/Zw8lJlFxee2Dkm9o+Ni8nL7xd2Gfhh3dacBgXJ
 LO54ydgTIvAW0z1mOhUjo1R6elhQOjAqTS+0Rq63qSwruS7LAO5ZfH3LwtDMUAR21FLx
 ydsg==
X-Gm-Message-State: APjAAAVMx8bG4q4KHEdKvjReGAQe/5AcnOv/kDteWvEU21XEum2dSmKx
 TPGzdU8BnZkAmpTlAsQ4i3A=
X-Google-Smtp-Source: APXvYqwVCYzieQmt6igQ6RiswHOPk0cOUDa7zoOiLFCwJCK65CcHTjofK0vKPbo01BznaQ8ITVMLqQ==
X-Received: by 2002:a63:318b:: with SMTP id
 x133mr30649337pgx.297.1557748830228; 
 Mon, 13 May 2019 05:00:30 -0700 (PDT)
Received: from [192.168.1.7] ([117.248.72.152])
 by smtp.gmail.com with ESMTPSA id t25sm29707082pfq.91.2019.05.13.05.00.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 05:00:29 -0700 (PDT)
Subject: Re: [PATCH v3 1/8] Staging: kpc2000: kpc_dma: Resolve trailing
 whitespace error reported by checkpatch
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20190510193833.1051-1-bnvandana@gmail.com>
 <20190513102622.22398-1-bnvandana@gmail.com> <20190513104920.GI18105@kadam>
From: Vandana BN <bnvandana@gmail.com>
Message-ID: <73832a6a-bc47-5882-91af-b23727f33b87@gmail.com>
Date: Mon, 13 May 2019 17:30:25 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513104920.GI18105@kadam>
Content-Language: en-US
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
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org,
 lukas.bulwahn@gmail.com, linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

oh ok.. thanks i will correct it.

On 13/05/19 4:19 PM, Dan Carpenter wrote:
> The Signed off by has to be before the first --- cut off line.
> Everything after the cut off is removed from the commit message.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
