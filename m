Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A18623DB8E
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 18:17:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C321A885D1;
	Thu,  6 Aug 2020 16:17:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2kRlGIuK4yYf; Thu,  6 Aug 2020 16:17:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6147D885BB;
	Thu,  6 Aug 2020 16:17:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F4561BF287
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 16:17:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2627E88391
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 16:17:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E9-9mryKvuKy for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 16:17:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
 [209.85.216.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A96C988382
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 16:17:32 +0000 (UTC)
Received: by mail-pj1-f43.google.com with SMTP id ha11so6828676pjb.1
 for <devel@driverdev.osuosl.org>; Thu, 06 Aug 2020 09:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zvufMbgkHBSjZokNTrohW1HBR5GWTEJLiYyoeQKMQoc=;
 b=Pf6FFYC0wPxL6d8QETsIOkfOlxIwRY/C0AqdyI90hPQRstfaU9+B998DLapMl1WGNB
 WqNSPX1Ws7YGgGUmETWrVvIdqQE+KZKu7Ow4fEGNh7jS9vd1PbSjEQxo8NGLOIbGkQnR
 oSHKePrXKpHzckubyhQ7X72KnBZun5DiYD0CXDtPtXREXrLySRCC75b7GpvHOrtOcKt6
 PbtvmEzLWaCG3aBEKBJSVfX28GZPbZcsQxlpYrMWr01bo5XGkJXagMq5c9Uhp15tjooh
 GESXpv1yOSShPFWP37VfgRm+CD9yuOHPXAo8Pv868sTLAK/hmBknx2rTL5Gyent1nS+0
 uyHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zvufMbgkHBSjZokNTrohW1HBR5GWTEJLiYyoeQKMQoc=;
 b=jaQD32Pn1x7HXxDmmEH+lFZrFGO5LBotmg8VRrOrHN8E8hOFYEYQUEpivfhKDwmmbg
 CXZ/ajQ+5dQa0vz655WokysNdmlLfdakv0bPOEnZ0sDxke75HIKBMSznVJNyBXSbQ7SG
 XFFz6lkkVEua3oGgGG5x2Y4uRPy45L9/HENefGcqwa4PQ1guH207RaiIQoJaN/IR5UB0
 eUR0Tq8m7TwdyNa1YMdZgyS4jq1Uzwh5z6T8zp3v2aY4R8ZZhbTI5PrWlREDxve2DtPR
 bGWR2X5CG/05SsQCnQtcl0/c47BunfsffswMUKrAsoCdcfqZOCZWExkJhbIkzr4Ikctl
 BGgQ==
X-Gm-Message-State: AOAM530DUxhVBcJDVAieoxrUukACoN0PovHvewgjZ5/NxpIn0Y5Wo/je
 jkiQAT+cs9mxbIAu+lz6m1E=
X-Google-Smtp-Source: ABdhPJyL9VQsbyt/WHVXcimDWPjM4C/e72yvdlI9/2OSl5YId8/LBG90edfhPfoQPbfaX1tEPA/pOQ==
X-Received: by 2002:a17:902:b495:: with SMTP id
 y21mr8136734plr.116.1596730652080; 
 Thu, 06 Aug 2020 09:17:32 -0700 (PDT)
Received: from gmail.com (fmdmzpr03-ext.fm.intel.com. [192.55.54.38])
 by smtp.gmail.com with ESMTPSA id z15sm4352201pjz.12.2020.08.06.09.17.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Aug 2020 09:17:31 -0700 (PDT)
Date: Thu, 6 Aug 2020 21:47:25 +0530
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Alex Elder <elder@ieee.org>
Subject: Re: issue with uninitialized value used in a comparison in
 gbcodec_mixer_dapm_ctl_put
Message-ID: <20200806161723.GA6927@gmail.com>
References: <7da6363c-9423-2b9f-029a-395cc8a932d7@canonical.com>
 <07ad3809-de73-9a66-0e4f-3a49f395a98a@ieee.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <07ad3809-de73-9a66-0e4f-3a49f395a98a@ieee.org>
User-Agent: Mutt/1.10.1+3 (f9293d646485) (2018-09-22)
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Greer <mgreer@animalcreek.com>, Johan Hovold <johan@kernel.org>,
 greybus-dev@lists.linaro.org, Colin Ian King <colin.king@canonical.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 05, 2020 at 08:35:15AM -0500, Alex Elder wrote:

<snip>

> 
> I think the fix is to add a call to this:
> 
>         ret = gb_audio_gb_get_control(module->mgmt_connection, data->ctl_id,
>                                       GB_AUDIO_INVALID_INDEX, &gbvalue);
> 
> before the field within gbvalue is used.
> 
> Looking at gbcodec_mixer_dapm_ctl_get() defined just above that, it
> seems that the call to gb_audio_gb_get_control() should be preceded
> by a call to gb_pm_runtime_get_sync().  And given that duplication,
> I suggest this call and the PM runtime wrapper functions should be
> placed in a new helper function.
> 
> I know that Vaibhav said he would be fixing this, so I guess my
> comments are directed at him.  Thanks for sending the patch Colin.
> 
> 					-Alex

Thanks Alex. I'll share a patch with the proposed fix.

--
vaibhav

> 
> 
> > Colin
> > 
> > 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
