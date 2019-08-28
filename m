Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 002E3A0229
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 14:49:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0072C22C44;
	Wed, 28 Aug 2019 12:49:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X3I0ul9ltMKh; Wed, 28 Aug 2019 12:49:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4155F2049F;
	Wed, 28 Aug 2019 12:49:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 29AD41BF37B
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 12:49:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 263EA86CE5
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 12:49:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hctCKn2D44qm for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 12:49:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4048086CE4
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 12:49:22 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id u16so2409797wrr.0
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 05:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=7leuT5w16CNYuFxUpc5aCG5ie2XhemLfDo5wWmNgZKU=;
 b=FJsbIf9SDkPrVdbzYuIMIsF39tshHocX3ZgV/t87rtbKy6jnqcoQoIgsMKK2+9nJ1b
 +4aN0WylZcIfrswqossYm5W5VWKCYDMdtPKY9lMAHIaetqnHw8CEi9WBtFYuf0xVSNxu
 cIiJlA+b+hjpKcU1ZeZHB/Y7I0t0ZZjqAhTNVKMH4oG5Yn2axwZIjEXz0Z07V1z6Ytk2
 IRi9DdVo/q8oUjXd/orlHI6ZNkrzZ0bsUTyVudxIddH5LBMvkvN978hbDBYNidqxcjJn
 ewmD58GI77jJlvFtlIarETzKgKpte9qLQDQXzH0xBcErvFc8IhFLxMC6ZAMiYbUaqzkM
 Ehyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=7leuT5w16CNYuFxUpc5aCG5ie2XhemLfDo5wWmNgZKU=;
 b=HuWGyjAmvdwjJumJZIDCZaLnMJkCbcqhvtvaftFYg8ajoHjkizviYxMjh9JoGjLmEJ
 fxcIdurmPzIPcUc1Xqh+KffWLEEOK62ym/XYnWH0LICa3SGLmgPSiWkDwcWF6wn2alL7
 +xr62xw6RQNfyN2nu/R1dPJm00uRl8kgouo5vI73OsvmdLKIxEzN0fH3dbiL1jAqSMDO
 3YN1l+K1JZGs4EiE/4wjhz8iVAbMfQYOlKx2fVbk5MEIurLOrG2pA73VeWeJMevU0tqv
 R7Y0gQPP5hyIbiPuR0uF/PyyML4of1E5lyDCzRemHtmxuLnDxWlOXt3yP8yC4PSEtQnu
 XoAA==
X-Gm-Message-State: APjAAAVER18LmUqec1nneJVNbgTDVae07EKlSpOTSC/l446bm/RbRREa
 Jf4kDU4eP6bR3E221IoSVkJZSw==
X-Google-Smtp-Source: APXvYqz08sIA4qCAkDSBu9lplw5abtVFPQ09qxgLfQkQBpdsmtXeUwOCclAo2J6LsC33EVNBEoVFYg==
X-Received: by 2002:adf:9d8b:: with SMTP id p11mr4253576wre.226.1566996560697; 
 Wed, 28 Aug 2019 05:49:20 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id g26sm1777766wmh.32.2019.08.28.05.49.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 05:49:20 -0700 (PDT)
References: <20190828102859.13180-1-rui.silva@linaro.org>
 <20190828104726.GE13017@localhost> <20190828114210.GB31462@kroah.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rui.silva@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: greybus: fix more header includes
In-reply-to: <20190828114210.GB31462@kroah.com>
Date: Wed, 28 Aug 2019 13:49:16 +0100
Message-ID: <m3d0gpwj3n.fsf@linaro.org>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,
On Wed 28 Aug 2019 at 12:42, Greg Kroah-Hartman wrote:
> On Wed, Aug 28, 2019 at 12:47:26PM +0200, Johan Hovold wrote:
>> On Wed, Aug 28, 2019 at 11:28:59AM +0100, Rui Miguel Silva wrote:
>> > More headers needed to be fixed when moving greybus out of staging and
>> > enabling the COMPILE_TEST option.
>> >
>> > Reported-by: kbuild test robot <lkp@intel.com>
>> > Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
>> > ---
>> >  include/linux/greybus/operation.h | 1 +
>> >  include/linux/greybus/svc.h       | 2 ++
>> >  2 files changed, 3 insertions(+)
>> >
>> > diff --git a/include/linux/greybus/operation.h b/include/linux/greybus/operation.h
>> > index 8ca864bba23e..bfbc56d8d863 100644
>> > --- a/include/linux/greybus/operation.h
>> > +++ b/include/linux/greybus/operation.h
>> > @@ -15,6 +15,7 @@
>> >  #include <linux/types.h>
>> >  #include <linux/workqueue.h>
>> >
>> > +#include "hd.h"
>>
>> No need to include hd.h, you only need a forward declaration of struct
>> gb_host_device.
>>
>> >  struct gb_operation;
>> >
>> > diff --git a/include/linux/greybus/svc.h b/include/linux/greybus/svc.h
>> > index 507f8bd4e4c8..11a86504c429 100644
>> > --- a/include/linux/greybus/svc.h
>> > +++ b/include/linux/greybus/svc.h
>> > @@ -12,6 +12,8 @@
>> >  #include <linux/types.h>
>> >  #include <linux/device.h>
>> >
>> > +#include "greybus_protocols.h"
>>
>> Same here, no need to include all the protocol definitions for struct
>> gb_svc_l2_timer_cfg.
>
> I agree with Johan, just forward declare these things and all should be
> fine and much simpler.
>

Agree also, v2 out.

---
Cheers,
	Rui

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
