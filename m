Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE6113AC7
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 16:49:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C5D085C4C;
	Sat,  4 May 2019 14:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j4k-GtyTLWl2; Sat,  4 May 2019 14:49:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F1C485CF2;
	Sat,  4 May 2019 14:49:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5EA0D1BF31C
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 14:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5B8BB87E41
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 14:49:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FYSJGXB-iNQv for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 14:49:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 110DC87E3F
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 14:49:10 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id w37so9644587edw.4
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 07:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ouSmw5pcZk0fylsN9lA/T+ETjE9vahgI6G1mhrQBT9M=;
 b=mOZsoflw38rnRLrvjnox0hhMo4ZGXAl+CqtpjM7HoObzVeyfNxtl0Z1wVtA1yTfUih
 4bGfM1p/dUVY3YSqyDhxpQyDseB8k1Y2a0Z8r89MMVKA8xLl/EefS2D1ZhOB45M4P571
 kbM1S1K9sy2hJmId2cejMSr0LtJeZO/bxWCjzE5Rwpc0QvWRcM4PpwcyglFcN0N1uLvR
 b2U+GQcY/y3jYFNMIjq8DWXFnYjSsVQ00NQRJoXqj/v766Z4EtXv6aTPCf8AMgFILtw1
 bq3VJ3TRsCtfXFl7FYcJkLqHFdT16QKXz9N2VRkechQu+ZmXtKgP+czYEgTgcI62K9j7
 TFRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ouSmw5pcZk0fylsN9lA/T+ETjE9vahgI6G1mhrQBT9M=;
 b=M8YwomV1HiI4eolB0WZoG2D7NTxDLODQzbBeL6dS05twK/qn04ph09oYgINzfqN9uG
 LR0ynm6lgYnBt/Eb9lgjmu2WL75v0F8O9lYI3v0W/PKiefvOF1scj9PQZQ1O/mAEz20W
 3tZBX3KdqCAznufJQnhlqsfJnA/ll+d5gsl1pafyrMr0mY+WAn0RcJ40xZBp/C7Wm+So
 q3eJIcCJ4wYeR5qs8SKAoicZULnnBasQ/nda+ul1XaQBAlBpJqxsrnsLM6XG9suLHYqR
 e0myq3CZn13DC0tWqT3A+7kmwsl7FFLOUCciD2DlYt9Ub5OYeggabzQ7/acWGpmzxVx3
 OYBg==
X-Gm-Message-State: APjAAAUCY1V08SHJs6ZlDepVyB1rYebuxjJQhUhFT5TCcHZVK7P5Z/J8
 HKmAcr/dYlUjQ/HdHdq/S861+Q==
X-Google-Smtp-Source: APXvYqzmxhL8Uxmt7IjVnu/du26wC+RwDS29oK6F2rGdOg+rzp+CIUgoqggY/dDbiqq2CfH7yte9BQ==
X-Received: by 2002:a50:e79b:: with SMTP id b27mr15469587edn.281.1556981348930; 
 Sat, 04 May 2019 07:49:08 -0700 (PDT)
Received: from [192.168.192.38] ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id f44sm1426053eda.73.2019.05.04.07.49.06
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 07:49:08 -0700 (PDT)
Subject: Re: [RESEND PATCH v6 0/5] Add i.MX8MM OCOTP support
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
 <20190504083939.GA1859@kroah.com>
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Message-ID: <d67c692d-9e4f-9d08-12bc-ab3644fbaa8c@nexus-software.ie>
Date: Sat, 4 May 2019 15:49:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190504083939.GA1859@kroah.com>
Content-Language: en-US-large
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, peng.fan@nxp.com,
 abel.vesa@nxp.com, anson.huang@nxp.com, srinivas.kandagatla@linaro.org,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 leonard.crestez@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 04/05/2019 09:39, Greg KH wrote:
> On Fri, May 03, 2019 at 05:53:37PM +0100, Bryan O'Donoghue wrote:
>> V6 RESEND:
>> - Adding Greg to sender list. Greg looks like you are the right person to
>>    apply this.
> 
> $ ./scripts/get_maintainer.pl --file drivers/nvmem/imx-ocotp.c
> Srinivas Kandagatla <srinivas.kandagatla@linaro.org> (maintainer:NVMEM FRAMEWORK)
> Shawn Guo <shawnguo@kernel.org> (maintainer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> Sascha Hauer <s.hauer@pengutronix.de> (maintainer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> Pengutronix Kernel Team <kernel@pengutronix.de> (reviewer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> Fabio Estevam <festevam@gmail.com> (reviewer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> NXP Linux Team <linux-imx@nxp.com> (reviewer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> linux-kernel@vger.kernel.org (open list)
> 
> 
> Why me???
> 

Looked like you were doing the merges to me.

commit 38e7b6efe997c4eb9a5a809dc2b2fe6c759b7c4b
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Ping, Srini, any chance you can merge this to your tree ?

---
bod
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
