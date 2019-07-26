Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F9777104
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 20:13:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B57D087993;
	Fri, 26 Jul 2019 18:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id srnPSn-2mpHh; Fri, 26 Jul 2019 18:13:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A991A87985;
	Fri, 26 Jul 2019 18:13:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 341541BF3BD
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:13:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1CDA6899A9
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:13:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ETgwDkDSvTcn for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 18:13:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CC88E899A0
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 18:13:41 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id q4so11709505oij.3
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 11:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=BjjJlV879zvacGB1X8HxFWmHBaqpdGed0atAco6+GI4=;
 b=uSAZlnZzyGiKPoCZ8+of5If/Ok6jwYvMpWp47EZKlveWuK/2L7ypuBo3a1g3d+0BsD
 Ae5DvIsVjS76bw07fhxEcjr4zrD0W3xEMp7QxI4FAsiCKhzS511beMZ6pRLE5IkwVDTL
 ZS+Ex7H7QOT/SkzeeGu/UUjW89Zg0ghrtRZFyUaBIkq0fuKzMH8sXeeFhZSNyJ7H0xpx
 NVsQFr4e+BVi1+uGtP1DWFy9tPM9p7xC1nSJolb4uOK9nyVKxpqFidwnmZ6EBSW5U44g
 Uv7XgZbmIYEusq6JvFiepec7P06UFLs5SQmYGd/yTzAhL2S6hP7bKcl0kNprA9PtqbmY
 3JNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BjjJlV879zvacGB1X8HxFWmHBaqpdGed0atAco6+GI4=;
 b=JaF+KrfwDy/o05m4JiAizPzV1uDav/RF1mq0Yn/B6+Bo5ksdiI7WuyIR5fqC2wq5pu
 KpC/A6ITxKfuaoNw30ZJU6Vq3zaMx83UY5ZSZDBi0S+bU7aiQ+wxWLKqlJ2iq3V2prq6
 LUwlSzgEO9kveG5ZhjtgMwxS+BTulamPvwWsmlt6+QsMrnYISeXkjanjwiGHb63RC55H
 5POanPzmpNYz2j+WIhSIcDlMzJo5tmF4qv46t45TWXXujxv489IdogIdwWehpqT2vBQz
 WggwOwAmdOQdPoyyiXpqMe/rLT4amdc3D7DVUDUfso+VYd9HtuGNVr4DsNMeX/fhvfRZ
 wJvQ==
X-Gm-Message-State: APjAAAX/LKbUCeCwlgURZty5jp3iS4oPv6y8eaRoy4uDt6b1FduhKcMq
 Ybu/KQcQXEeuemSHHpbnBg0=
X-Google-Smtp-Source: APXvYqxzbcrzWnJw3FqAdbdLrQjkNLG84WMtD4VcLg+nDfDrkn9yp7NmR/WCGhXBsDqr+TBOyuBkaA==
X-Received: by 2002:aca:ac4d:: with SMTP id v74mr43043303oie.66.1564164820904; 
 Fri, 26 Jul 2019 11:13:40 -0700 (PDT)
Received: from [192.168.1.112] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id i11sm18347154oia.9.2019.07.26.11.13.40
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 11:13:40 -0700 (PDT)
Subject: Re: [PATCH 1/6] staging: rtl8188eu: add spaces around '+' in
 usb_halinit.c
To: Michael Straube <straube.linux@gmail.com>, gregkh@linuxfoundation.org
References: <20190726180448.2290-1-straube.linux@gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <500253ca-41bf-b374-ada1-84607455bcbc@lwfinger.net>
Date: Fri, 26 Jul 2019 13:13:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726180448.2290-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/26/19 1:04 PM, Michael Straube wrote:
> Add spaces around '+' to improve readability and follow kernel
> coding style. Reported by checkpatch.
> 
> Signed-off-by: Michael Straube <straube.linux@gmail.com>
> ---
>   drivers/staging/rtl8188eu/hal/usb_halinit.c | 76 ++++++++++-----------
>   1 file changed, 38 insertions(+), 38 deletions(-)

If they apply, all six of these are OK.

Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Larry

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
