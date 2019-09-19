Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8868B78A9
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 13:46:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9F05860F9;
	Thu, 19 Sep 2019 11:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5rUGlaGtQ4tF; Thu, 19 Sep 2019 11:46:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C61A385F85;
	Thu, 19 Sep 2019 11:46:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6CD151BF2C7
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 11:46:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 688E687E30
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 11:46:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mztravaQf6-b for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 11:46:14 +0000 (UTC)
X-Greylist: delayed 00:06:38 by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C08C587E24
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 11:46:13 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id y21so3620524wmi.0
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 04:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DKzAQahCYPhZ2ssPBGIJt75n2wk0bxvGCrcodj0E+8o=;
 b=df2ht/hYt42oGahvKnuFkzhFM20BjG6q6b2qOTyHeZ5qndKJKUFk/S8p9AtiHgm21z
 lLbbmV9F/x0vLg/s2ehHstlIlV8sPpwE1vP2BHwIpiPdcgqKajPq3ENzi/oCValibmbG
 Sgz6zWgIP5QJmAUogGBCFWNuYvNKKEp5OhQA4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DKzAQahCYPhZ2ssPBGIJt75n2wk0bxvGCrcodj0E+8o=;
 b=c8K/eR0F+rQIiywI3Au9UPemqJiHTyP5MpRBrBeM8QE1LCJRFOyg7AShwtTLRXy2cw
 Gsuk0cHqKdjduTkjQ/YNljYtr1W4lBTv/r2+46NrzlHI7poIGhwnQIjeLBNxI5pa8HCn
 NrHwUC2yDegg7hOVrK47Ghm+q+o2T3cvSS2oTFpzJr1aw9V6uJluAYlbyKtYaS9io+Tv
 pXRY1EJOYZAPi0Og7Y7hir6h6lmqi45J2meyoDCE8o1W2FiiiNkGOC9D6FYCelSlOfoi
 6Sli3MMPAsS1hzMZCgYa3C9umsbxZtObxEKSfjvoP0HmQqZjuGprqrzPbsyYn8p2FKy/
 5LTQ==
X-Gm-Message-State: APjAAAU8amIgsrzfe+7dJeOn9e1mtjYGHvTJWDa2shy1ndfNeRvrFONx
 r6KvYGmv1z9Wb+AG5XpEb/nORaxfNzJDB02y
X-Google-Smtp-Source: APXvYqynRI01eO1fYwKFW25INxMrTheYRYlf7PGDeX+77jnNAOkkPYIuZOeB0pAEfbh+4FmCSDeScw==
X-Received: by 2002:a05:600c:2208:: with SMTP id
 z8mr2687432wml.113.1568893173499; 
 Thu, 19 Sep 2019 04:39:33 -0700 (PDT)
Received: from [10.230.33.15] ([192.19.248.250])
 by smtp.gmail.com with ESMTPSA id z142sm11043922wmc.24.2019.09.19.04.39.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Sep 2019 04:39:32 -0700 (PDT)
Subject: Re: [PATCH 00/20] Add support for Silicon Labs WiFi chip WF200 and
 further
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jerome Pouiller <Jerome.Pouiller@silabs.com>
References: <20190919105153.15285-1-Jerome.Pouiller@silabs.com>
 <20190919112508.GA3037175@kroah.com>
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <7639195f-59f0-a0dc-02f2-45b3a08e7002@broadcom.com>
Date: Thu, 19 Sep 2019 13:39:31 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190919112508.GA3037175@kroah.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Le Goff <David.Legoff@silabs.com>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/19/2019 1:25 PM, Greg Kroah-Hartman wrote:
>>    - I also kept compatibility code for earlier Linux kernel version. I
>>      may drop it in future. Maybe I will maintain compatibility with
>>      older kernels in a external set of patches.
> That has to be dropped for the in-kernel version.

There is no need to maintain such compatibility. You basically get it 
for free with the linux-backports project [1].

Regards,
Arend

[1] https://backports.wiki.kernel.org/index.php/Main_Page
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
