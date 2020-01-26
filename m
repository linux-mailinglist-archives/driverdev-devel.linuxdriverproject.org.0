Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE92149A52
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jan 2020 12:04:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AFB23854C0;
	Sun, 26 Jan 2020 11:04:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jHjMXk+-QPPi; Sun, 26 Jan 2020 11:04:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 70B278557B;
	Sun, 26 Jan 2020 11:04:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B02E31BF423
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 11:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A61A7854C0
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 11:04:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IwV4wX-X+aHS for <devel@linuxdriverproject.org>;
 Sun, 26 Jan 2020 11:04:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A4659853FC
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 11:04:41 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id m30so4201336lfp.8
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 03:04:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cBEvHipDhASp6SrgrMvSSIKcdMGAZhryboaA8IMUX2s=;
 b=mBwCvfAXzFWZGlVIRmfq+rKRLgM8ls108rfF72pylAslogt1Rm+NSc6Q4mvlvsFgBR
 EzXqRg/rHRhMkSCI1HFvLImm9y6/agf3Fswofvnv47MnvZVzbSWE1q7gFXMvRBjLsQ8U
 uZkb3xNXSIHl2rZp9sKA4SJO1nVAQ4ImW697GjAi0QvMtLAX7Mh5rLB4u37/BR4346db
 x52/SsdfaAo8T6lgHsa9PW8P4LHmfnR+Yjo11bo+T0zd60rhN+ycvBuT4VWSnOWp48mC
 WyOpqInQ75KDv2eQKNhgu8FfeX18sPkkUXhJDdMKSau+Q27knP72T0HVsqtWYqeTmUUg
 eCUg==
X-Gm-Message-State: APjAAAUOrQZTmeqsQYZypWCp5YIAj8AToBtH+7lBsDfNHt5sGdfQ7jJu
 vY+5NmY5eze14w3vrSP1M0Q=
X-Google-Smtp-Source: APXvYqxUJWPIUdQ6aj4sUa6PfEhjDgxHlfrOt9/+bFdx0TGpwI3cBGPA3OkKviqn+eYt1PKhd4GFIw==
X-Received: by 2002:a19:cb95:: with SMTP id b143mr1425364lfg.158.1580036679872; 
 Sun, 26 Jan 2020 03:04:39 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id s15sm812959ljs.58.2020.01.26.03.04.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jan 2020 03:04:38 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1ivfiZ-0002mK-R5; Sun, 26 Jan 2020 12:04:39 +0100
Date: Sun, 26 Jan 2020 12:04:39 +0100
From: Johan Hovold <johan@kernel.org>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
Subject: Re: [PATCH] staging: greybus: fix fw is NULL but dereferenced.
Message-ID: <20200126110439.GL8375@localhost>
References: <20200126083130.GA17725@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200126083130.GA17725@google.com>
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
 saurav.girepunje@hotmail.com, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jan 26, 2020 at 02:01:30PM +0530, Saurav Girepunje wrote:
> Fix the warning reported by cocci check.
> 
> Changes:
> 
> In queue_work fw dereference before it actually get assigned.
> move queue_work before gb_bootrom_set_timeout.

Nope. As I said yesterday, you need to verify the output of any static
checkers you use.

The code may be unnecessarily subtle, but there's no way fw can be
dereferenced before being initialised currently.

> -queue_work:
>   	/* Refresh timeout */
>   	if (!ret && (offset + size == fw->size))

Specifically, the second operand is never evaluated if ret is non-zero.

>   		next_request = NEXT_REQ_READY_TO_BOOT;
> -	else
> -		next_request = NEXT_REQ_GET_FIRMWARE;
>   
> +queue_work:
>   	gb_bootrom_set_timeout(bootrom, next_request, NEXT_REQ_TIMEOUT_MS);
>   
>   	return ret;

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
