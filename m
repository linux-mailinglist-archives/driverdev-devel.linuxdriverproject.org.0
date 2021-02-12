Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B14E1319BA5
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 10:09:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C1E7864AD;
	Fri, 12 Feb 2021 09:09:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HhlDaUTD5ROV; Fri, 12 Feb 2021 09:09:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 20FC086407;
	Fri, 12 Feb 2021 09:09:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 999AE1BF372
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 09:09:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9552C8700A
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 09:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qTBXPizkEgHd for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 09:09:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
 [209.85.210.173])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C04F886E97
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 09:09:30 +0000 (UTC)
Received: by mail-pf1-f173.google.com with SMTP id z6so5452183pfq.0
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 01:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XAYDMc2/fGV71iZYwesEww5xPiihWpiXeAmZAyvOe0k=;
 b=hSsb0sA9qQpjNsE1O9WW3n3zgpE9fpzB81h8j99+J32k+ZetDL8aV7g2Xnw1diPi+3
 /O9TzA6nFqLVjDMtZ4FUulDdOIyK18b29gZH9iGQ0ngFFF16O0wnvN7amLMJOF9XsRFY
 /h4WLS8edjsAJmgSPepLU1WiKv4aTlXIhF7u6vsMWVGlOEvL7mVlwdT8JC0oZW40xc5N
 fF4VmEh9dwgcztlN5HZE+JgqmHo5g/qHM54ahvkxM7fJbbEz+IQlCgsvsVjHvz+8kYFD
 rQ8uztveBTn86h/8VHnWk8eUKO/st+QUQXbbDftw4EuT47/dU4pjlzBjguefD8P2jfEC
 wbkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XAYDMc2/fGV71iZYwesEww5xPiihWpiXeAmZAyvOe0k=;
 b=pu2SZNtVPu7vAulJQa/4F1MOnFeTU1BF4aTw2u2Z/FLTKr8fVqyZUHMLSnMI7j7/1A
 wHh+PPMLQct8mQeSEi6a2zw/oFiG2gKjVc2vjMGCMZD0DkkG2XDcvdGNN1twzcc4Uevt
 ma5wpDPPuNIJ4HCR28x1sZ28nUZZ7GjBZYbc0gzpGsEJOAh5kuZ9Fpe5+rQOfcEQEgOV
 r98NKiBuDj9z0whsu7icOZ7eKnthEaifbzc6h1BVtSMtZZdQJMfZ5L9+g2qoV0Y6SUfF
 4DprFzjfiqKVcWphnRK2zClGDBB7/A/eFnMviRNfiYdOJPxzJMv8H5vU8mkvEZzIxH+Q
 boLQ==
X-Gm-Message-State: AOAM532wSirNjVHpKa7g183EGtGFohbjwWRqBX+8cjeScbHg6plwkw1+
 EmodoCXbSZHCDc4op+fc/Wf2Tg==
X-Google-Smtp-Source: ABdhPJxp/8XuwwBnaUORSj4eDUY++gP66F0IKT8Z2Gdj52KvxOWsoVMx9Y/TQ/f+hBeL6Ku5awMejA==
X-Received: by 2002:a63:3686:: with SMTP id d128mr2212533pga.240.1613120970332; 
 Fri, 12 Feb 2021 01:09:30 -0800 (PST)
Received: from localhost ([122.172.59.240])
 by smtp.gmail.com with ESMTPSA id lr7sm7067253pjb.56.2021.02.12.01.09.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Feb 2021 01:09:29 -0800 (PST)
Date: Fri, 12 Feb 2021 14:39:26 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Pritthijit Nath <pritthijit.nath@icloud.com>
Subject: Re: [PATCH 1/2] staging: greybus: Fixed alignment issue in hid.c
Message-ID: <20210212090926.ox763j3btrqfzzzj@vireshk-i7>
References: <20210212081835.9497-1-pritthijit.nath@icloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210212081835.9497-1-pritthijit.nath@icloud.com>
User-Agent: NeoMutt/20180716-391-311a52
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, vireshk@kernel.org,
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 12-02-21, 13:48, Pritthijit Nath wrote:
> This change fixes a checkpatch CHECK style issue for "Alignment should match
> open parenthesis".
> 
> Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
> ---
>  drivers/staging/greybus/hid.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
> index ed706f39e87a..a56c3fb5d35a 100644
> --- a/drivers/staging/greybus/hid.c
> +++ b/drivers/staging/greybus/hid.c
> @@ -221,8 +221,8 @@ static void gb_hid_init_reports(struct gb_hid *ghid)
>  }
> 
>  static int __gb_hid_get_raw_report(struct hid_device *hid,
> -		unsigned char report_number, __u8 *buf, size_t count,
> -		unsigned char report_type)
> +				   unsigned char report_number, __u8 *buf, size_t count,
> +				   unsigned char report_type)
>  {
>  	struct gb_hid *ghid = hid->driver_data;
>  	int ret;

I can't even count the number of attempts we have seen in previous
years to make checkpatch --strict happy for greybus.

I say we make this change once and for all across greybus, so we don't
have to review or NAK someone afterwards.

Should I send a patch for this ?

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
