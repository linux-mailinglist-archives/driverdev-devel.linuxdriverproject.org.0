Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE286570C0
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 20:35:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E9B87220CA;
	Wed, 26 Jun 2019 18:35:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0DD9NbLqB1lI; Wed, 26 Jun 2019 18:35:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C0FE32202C;
	Wed, 26 Jun 2019 18:35:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A65851BF41C
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 18:35:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A340C87D92
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 18:35:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yMXgeNzPmTHH for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 18:35:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DE33287CCB
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 18:35:44 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id 207so3136948wma.1
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 11:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=JwwlhRes3eA1e/9Q/hAaa2AfY6tnj486mE1SbBlz0rU=;
 b=fqEUFEYw9qv3t6ezbWG5URRezYfRHUtrM1lTZFignM+UEuk6nmumDvMNaEbwV8B6/U
 a88d3u1uY3AW5HO8EX/hZ+2slvvCnfRIbnPSlcsmlmXRwSqLJKSSMw521Rcf/frdz8Ju
 VCQlnrE3gKEwXtlFjm7d+FqSMzecYPrY0CbuPatlexyVySbprIjAZgJO1Fxmoh2IkP1c
 76xAzTct5LXCtynhA/ro/Ue7Z5yg6qHLXPvOZe9FE32Juvcfc4YZcHpcbSYEugFCIW1D
 5tP0QtmDMGKaIhWSfXuIlEQeHyjZrKrYIQpPDv5i2zTX5oqbc39/LKvxigMd6OIKPshr
 DOTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=JwwlhRes3eA1e/9Q/hAaa2AfY6tnj486mE1SbBlz0rU=;
 b=TIKSX9dEYWw8PQEU0ZEp18X53Oa5BMt7GtQAfqSsRi8VzuGc1VD5JnjgDZ678BHYFw
 G57w1fSf4SNuvCAOz29hPx085njJ5/DQ8EYkZMD5dsNoVQbHAds8qt7qaAlV8kh395BH
 esWb62VkhQD8r6P5lMPfVykLpatfFFjohgf7HCqIRunF8d3vphdAFpg1h+bl/if5EtfF
 uEdIMdx33sCFTQio+ndCCdacDHN/3gaJhDA7kQOAPwz3UKDSTcE+FohzjTB7QhH2vry3
 CgJJ0T7TtUFVbFXZuNlQ1DVMgXXZTNzNS6ivbU8EssXD0idYBd9lyntjVNdxul1xdxNr
 d37w==
X-Gm-Message-State: APjAAAWjZuiAyrZbCAcQRFf5teWbkYLx92ZK1LAlLWt9vcjbeUjKdwk0
 4HLvI9rnE92/++7r4TuoV2M=
X-Google-Smtp-Source: APXvYqyq7eim+ZRBTCdydue2wqc7N3iBFvdNRciIZbxjR7OLY0XqW731SSbiJw0uh41ze5RKeO5kEg==
X-Received: by 2002:a7b:c8d4:: with SMTP id f20mr287046wml.90.1561574143412;
 Wed, 26 Jun 2019 11:35:43 -0700 (PDT)
Received: from [172.30.90.108] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id c1sm36562604wrh.1.2019.06.26.11.35.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 11:35:42 -0700 (PDT)
Subject: Re: media: staging/imx: Improve pipeline searching (bug report)
To: Colin Ian King <colin.king@canonical.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Rui Miguel Silva <rmfrfs@gmail.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org
References: <9b6d7f0e-f191-e5d5-e20b-9244800678fe@canonical.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <fa12f7f7-c2c8-6777-0359-8bdd8290f517@gmail.com>
Date: Wed, 26 Jun 2019 11:35:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <9b6d7f0e-f191-e5d5-e20b-9244800678fe@canonical.com>
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks for catching,

On 6/26/19 11:27 AM, Colin Ian King wrote:
> Hi,
>
> Static analysis with Coverity on Linux next has found a potential issue
> with the following commit:
>
> commit 3ef46bc97ca2c918b7657a08220c7340a9bb07a2
> Author: Steve Longerbeam <slongerbeam@gmail.com>
> Date:   Fri May 10 17:50:11 2019 -0400
>
>      media: staging/imx: Improve pipeline searching
>
>
> The issue is in drivers/staging/media/imx/imx-media-utils.c in function
> find_pipeline_entity:
>
>          struct media_pad *pad = NULL;
>
> pad is assigned a NULL
>
>          struct video_device *vfd;
>          struct v4l2_subdev *sd;
>
>          if (grp_id && is_media_entity_v4l2_subdev(start)) {
>                  sd = media_entity_to_v4l2_subdev(start);
>                  if (sd->grp_id & grp_id)
>                          return &sd->entity;
>          } else if (buftype && is_media_entity_v4l2_video_device(start)) {
>                  vfd = media_entity_to_video_device(pad->entity);
>
> ..and above the null pad is being dereferenced causing a kernel oops.

yes, this is a typo and should be:

vfd = media_entity_to_video_device(start);


Sending a patch...

Steve

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
