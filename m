Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0136B104057
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 17:09:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA08386D7D;
	Wed, 20 Nov 2019 16:08:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kuUIsHQVXc5h; Wed, 20 Nov 2019 16:08:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B6E186AC1;
	Wed, 20 Nov 2019 16:08:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D1F81BF2CA
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 16:08:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 13123864B2
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 16:08:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3fAlP3m6uUgP for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 16:08:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BD3FE87BC0
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 16:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1574266118;
 bh=VPRug7+HSvbebtgoesxzkq1RJlesAxyAx8j/x5VtNyg=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=dxf4l3ZN8XUjfHH8AbAqsyZhlekVfmnGyCnTVgHPin3nZ06ejiZCbnHY2yoEdUPT7
 Q7U4b4vQ22JTjkv7rRPZq/pec/GxA5PzyN2aDFJQJCBdnTlHjlWiwCTMKPuQB/KF1h
 tarE9TV81aqIJlBMFhRS8i/oEy67zba7NnXCiTjs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.139]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mof9P-1i4iMx2LpR-00p65W; Wed, 20
 Nov 2019 17:08:38 +0100
Subject: Re: [PATCH] staging: vc04: Fix Kconfig indentation
To: Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org
References: <20191120133848.13250-1-krzk@kernel.org>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <fc808b93-92e6-cb31-0a15-8ed6faaae536@gmx.net>
Date: Wed, 20 Nov 2019 17:08:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120133848.13250-1-krzk@kernel.org>
Content-Language: en-US
X-Provags-ID: V03:K1:mJp9UTjNGlEn2Z9Lm3PI/i9DsBu8E5pTB5Ml1bLGxLw4BfCwyiS
 dhcR3OZBNgQBR3ZrZt50zbmcEWHU+ic26/yqd/tQWfKf4mWH6dByZ6yOMv6knYJvCrPE890
 MpxiArxCaVWBUuK92eedfZ3swDJX8GVpwfSL2YJ1cvoGoaHFdkWqtN6ATM+GGbIq9vWjv1S
 526Jv8JC6V0Z8zvB7vZMw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:vw8G8SQOvuw=:DUT5v2eclXHUpOqZ4iBzf4
 /u2biM6bLky+V2Jp3MK04MHdqMvBCNAENqpteQHosqNo6VmY14+UBag/2wYohIlR+A2s2+jEO
 yvyrbuK4jIKOSIbXnTAlSqPG+zPohSoo5Fdl9XEs0uAUR4j3G2o3apzW/TPRcQrsR4enLM3fb
 eK8tLxepDUyM+a1j8i06RMeUMm/VDuS+xetFTmlITjS4itjKJJASXSn+0O0BknJJTybcIkSiP
 O6+mdOIHmvqD3jogPR1Lq2HAFdl0f/7wEuZTIdzkBJ2H7kDo9gst49n/74GhWmJ5qLsgAGxXO
 PfYu2aTMW8ym5uj1vEolb771duiJLGOuP/b+cZ4wuAzKJ+6fH/cwW2XAzalZ5I7iVb6UDMnUG
 vgxk1nKarRsG7OhAJq8t0VX5V5DRYUhZ7AWbVs74YAj1vhufhNp3oJHzPnNKYj4ToMcE+QtV6
 KspU5j1RYBVAx1O3J4z2Yyxv5xUnNS2iq5d8l1Ab9KUHWHn/pFZqRg+aAqAgcQgGWTrGLtnVg
 0hik4dG39IzkAaMFh91Bui76oN6cOkmzQjaYWh9d+wF4xo1xaS/p+7xECUVHPwxk2GcMuland
 aLrut5w+B1uu9gqUZr29M0SSXGXOD0fSSMQrV7fkqRNd2HjOWgJ+cc3pFApwlKLOd5ZdMvj8e
 w6q4v0us1fFUOO9vBmsNGYcMuRJfMe85mK3UoVKy+edfAuB4shXECpl9ebkhRjF8uo7EHKFzQ
 D+SmClymQ7kBLCW5sXFgt9GZG980BuKctZmmmzC1UbOlFmxUklYds5ZBbTz/btgEMHo50bC1/
 hvApTYqOFWQv2QbOOGL9/NKIi660eXA7TXsXAMsapNP0w5kFnHrywfUu4kVbvqVhmxFQarlbg
 wu/fFMyG8L1teQo8cScmK0QWVb4QJkbeIO2VGkpTLHD1vXBLn2uAq3Ac/d4BZHFZRBInOCOek
 eOfhiVzW1ks1Y+SFNCwSJYF/wzOqQHd4uJ0TQyKJKfZ9fBdxGWYoPh/tEFAfrkTAvmK2xsg8G
 0OTm0qCx/NEoDnkdOa12umm0LZ3MvmQp7ifNlEALNL4soV44vTdOqZu04SYD+myc0TPE2Azk8
 BR7RvQL/yzFe+0opD4rrAHP65qR8eHqsnlmxat9YJfq+ikGKUcL2dZ4EBmi5xBj8HO4e9VkqL
 j31KYmDyG0m3rdvuHhceYkuqwck4waUZnIlQUwslLAW1iHCC2Rnrp8CXbQ3LVJo6TuSmFbd7h
 LFJcRCCLynwfOJpNjPSBq10fWCLK45hrLoQXRBiZ+CyWLB+APvNmw/HfcO5g=
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
Cc: devel@driverdev.osuosl.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Am 20.11.19 um 14:38 schrieb Krzysztof Kozlowski:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
> 	$ sed -e 's/^        /\t/' -i */Kconfig
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Stefan Wahren <wahrenst@gmx.net>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
