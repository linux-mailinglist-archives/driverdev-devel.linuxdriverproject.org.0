Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB329C951
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 08:22:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7423987476;
	Mon, 26 Aug 2019 06:22:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Ce9NLDsDlJb; Mon, 26 Aug 2019 06:22:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2BA5F86FD1;
	Mon, 26 Aug 2019 06:22:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C5991BF42D
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 06:22:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 09774860AD
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 06:22:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R2MPvZUEpyyo for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 06:22:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6D16A85E25
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 06:22:01 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id m9so9480440pls.8
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 23:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=K4xTqVT3gSlsyJrTOrya5b7nDs+y3cG9ZLcN0dcxs5A=;
 b=EkAOSsNMOTvNOdNGd/38LlvgZDSOHTire+gwrsxVtrv7JM1H0phNlUP+GCRrrZYBsW
 7Ko7ELYrP0c+wIsPWP/BOwTYwEx5KoQ+BNaUjnBYxVoPXiKUt1Lpbe6SCjPWwa642Rj4
 VrKljVttBDG5Ihrr6biUZP1aTqSYax7ebXs9LEXpRFfuzIDMOZ42SII91cqGBFaVxRQn
 J6MewffqZMkxrZZAm+q4i0ko29I4sFW6rRjZHb9mcslxIbpKgP9UT0fzOuCkz00Gzc7N
 m3PDW85MbomzDvm8RLZWTWSKJwYFgrYWG512xpnjj8LFV0aQiVJzq1mqEjg4gvpHjqaR
 sfpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=K4xTqVT3gSlsyJrTOrya5b7nDs+y3cG9ZLcN0dcxs5A=;
 b=WO2SyNpFXoF1ubIPSR2PST5aQS4kmRlmHZgT5VRtZehykDdynwDk62sPN6UrGrdbru
 /p4H500ivWZfs67BygZXtIy0dgTtIv8TFDvWhGUVr91OCpNi8VSo+KIdZ33K3aGi+72p
 DKyrtjvgy/IEBoQiaYWDYFkXth29NyAQ0TL7MNAIbolsj/Ex0eOjGVUDhfMBAAML49rp
 +4SRqcb5R7AVEpwTrfl7b6r80mDrm6f0gDsZy7M+h9zwLSRk4fTW+UpDMML2yd1MaYpG
 pGZorbqU6iU9Z/sYNLXeYs8RDUurQaLLGdorS+8hisczJ5ZzHS1HkgzGtYbNtBUnPpy7
 +uUQ==
X-Gm-Message-State: APjAAAVI12/80IiY2Z+MXUdL1CiFPkbZwQJo+VoQzTnapc/suxVifzKO
 4X5Lrk8/2SI31/aSRUxOZ7do5g==
X-Google-Smtp-Source: APXvYqxCNCxrBS4sn6xq67avgshvFQc+3q2JEbYVJ7Kjldm2lweFl1UnWd6Z6wIZ29ZSdOud3q8IqA==
X-Received: by 2002:a17:902:e584:: with SMTP id
 cl4mr16930492plb.160.1566800035845; 
 Sun, 25 Aug 2019 23:13:55 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id c12sm14551590pfc.22.2019.08.25.23.13.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 25 Aug 2019 23:13:54 -0700 (PDT)
Date: Mon, 26 Aug 2019 11:43:53 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [greybus-dev] [PATCH 8/9] staging: greybus: move the greybus
 core to drivers/greybus
Message-ID: <20190826061353.em5rrwu342n6slnk@vireshk-i7>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190825055429.18547-9-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825055429.18547-9-gregkh@linuxfoundation.org>
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
> The Greybus core code has been stable for a long time, and has been
> shipping for many years in millions of phones.  With the advent of a
> recent Google Summer of Code project, and a number of new devices in the
> works from various companies, it is time to get the core greybus code
> out of staging as it really is going to be with us for a while.
> 
> Cc: Johan Hovold <johan@kernel.org>
> Cc: Alex Elder <elder@kernel.org>
> Cc: linux-kernel@vger.kernel.org
> Cc: greybus-dev@lists.linaro.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
