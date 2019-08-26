Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 519AC9C8DD
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 07:57:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 128968609D;
	Mon, 26 Aug 2019 05:57:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U6sXFTxlngRe; Mon, 26 Aug 2019 05:57:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9502D85F9C;
	Mon, 26 Aug 2019 05:57:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4A0CC1BF44C
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 05:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 46F79879FC
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 05:57:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id es4-BbXRQa8J for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 05:57:19 +0000 (UTC)
X-Greylist: delayed 00:05:03 by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B005687938
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 05:57:19 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id d1so9907634pgp.4
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 22:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9xFcYbKloWUD9U0Qz6H0TveU9ug00KRHG74gi91QrvU=;
 b=XRmo6bSZpDYJflehRntZoFZ0Hrmnm6MChJl+pPSK/VdmBvIKexu7z8L23I/NuyX3zc
 oNfnckNUbH40o5fCFm8jasOpEjIWU92d7DhqQ+NFVOpavqT4d70J013UcnEn2aFHJA4R
 i7mBSxBetqP1b1HyCUt7h3WTyU9jnkHuh6l1TtSshql8cdJzWp6IgUEhJfy3vZZ/q4By
 /8DILUGBOApBBzmqBPPDMb6CeNwlgTxyupyZfI0C/k9yCgzd/Om6a7jnlyEPu2/SPVi8
 dPeUXr1rPEpgYlgvGrmAYx9GJbwf/mDd5oE9Z24atYxvbY8SgFOjfUTKzjVr4UoXUyuu
 tljA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9xFcYbKloWUD9U0Qz6H0TveU9ug00KRHG74gi91QrvU=;
 b=EB3VSlkI3BcBINrfnboa/JF1wxZxb2jT43A+sy/sjCfnd5j/HZ60GzkOHogcdNzXmh
 Ulr27YtmCy03ID5Qew5enOKgJuFFfPsh7UkO+lkwrxLPxo8wRyWb4b2fgp+dEtRnGAIf
 /bMR4vARCaigOS0DuvLtvj2eN7wCGZ1vr1EVTMGU2X8DtrURsSt+xU46lUQmcx0YpQiw
 bLdTUJLcczA7TxSKg+IYyCsOQglKdRYpXBuS9QGg/TIxKRrY1qryOF9IOKziUkDdb6fW
 DQKqthBRxhzEM39gISwVfh44KVGsxGvIdVFeBn+anheyhdnzP6C0yd6OQFzM81hFveN0
 ccTA==
X-Gm-Message-State: APjAAAVd/LNEdtDzU5vPvjf+L5CAisJFkSgTDKzsDxjEzyVWk3DrNnjS
 p3ONhdF5Z61JXsA2xWLIAmiv6A==
X-Google-Smtp-Source: APXvYqyXdSKe10mfBX8QPJTikvSq1h+bRif33tDeEksl3VMW4Dw/Gd1yZi/jfZNNuhPVDn9ocm9muA==
X-Received: by 2002:a62:64d4:: with SMTP id y203mr18157670pfb.91.1566799039325; 
 Sun, 25 Aug 2019 22:57:19 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id y188sm10528347pfy.57.2019.08.25.22.57.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 25 Aug 2019 22:57:18 -0700 (PDT)
Date: Mon, 26 Aug 2019 11:27:16 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [greybus-dev] [PATCH 3/9] staging: greybus: hd: Fix up some
 alignment checkpatch issues
Message-ID: <20190826055716.7ybngfgqvadcn4uw@vireshk-i7>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190825055429.18547-4-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825055429.18547-4-gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org, elder@kernel.org,
 johan@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 25-08-19, 07:54, Greg Kroah-Hartman wrote:
> Some function prototypes do not match the expected alignment formatting
> so fix that up so that checkpatch is happy.
> 
> Cc: Johan Hovold <johan@kernel.org>
> Cc: Alex Elder <elder@kernel.org>
> Cc: greybus-dev@lists.linaro.org
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/staging/greybus/hd.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
