Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 819F21B434
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 12:43:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 50486254EB;
	Mon, 13 May 2019 10:43:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6w7dpB2PxGn7; Mon, 13 May 2019 10:43:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8B8C121514;
	Mon, 13 May 2019 10:43:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EFDD11BF2EC
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 10:43:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ECFE883553
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 10:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4rb-Jfx7mEZR for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 10:43:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CE50182476
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 10:43:36 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id j26so6572724pgl.5
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 03:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=/9H7eEjZDZuXtxOJcFbxKLH+cRoZn/hc0SR3Jx+X1Co=;
 b=n6/Snc2PuWQKlDXdLLvbDS/Ti0DxL8BzCO6ouqqGvwDVLCKLzapDByjTofJJN4oNTp
 iyc6gMTnyDiSJeynSNBxtzUrR9RP4mPd4W1p0Kf+uG5kezVko374sKJ01hk+D9vTSl1k
 XV5CI2RtyUL1m15K8OTqnaAaEAsBhjwLa4CruGyC7UkyGfR7SYWxEHmoRvizW7eQ+n6J
 dewLoUMg/ygEMCFlrz3UcOglmKKKZTrWdz7AoVQj7AYbckr+oAzaRUjpKau+7IfiD2B/
 awCcKg4p4TSEb+tpOLANjkBLHNsfJYGvMF/ZXxuQEg4nDPFDiEf67SGvbWB03jufgbgF
 HnIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=/9H7eEjZDZuXtxOJcFbxKLH+cRoZn/hc0SR3Jx+X1Co=;
 b=OK0Z2PcoiTBVMfvhh1wPwWCf/ZIHVGFPWaLLjZ3tnbKfHyULi1Fuhcbb2Y0T1XJGgH
 5iAjXRxSPTH2Rbvvhdv6OyVg7kKIjeEbIYoJuAM95Ss38dXUt+XS0zQOeQ/gtfm4svp1
 2zxIUaETeipgp3U09PhDY7Z+n0maNfkIdfyWnw/GPRuN8BzW4frUDRpZXlBW9yE9Z/va
 C3AIN113gZ/nlQSuYpa55jdAeGXt/Tu/fObL/vqkenGMs26RvIXc65NwPa+TdQmN5oQZ
 OT59oD30zr6fecFkWgY+uXMIZwAR9r1W+rPt/aKwWYGWcMj7ZWL0a++HgWktTamC4ABt
 //YA==
X-Gm-Message-State: APjAAAVHBqXhAbS3QLu7ZlKNQCKAnFMkm2Z/2MBC3qAajmipspwgRKut
 BwVPgoQwmLLx74lIAIjUsXM=
X-Google-Smtp-Source: APXvYqzRge4MvcFVzpGPFZsHAxD+cQfFDOmmWKrMTRRLkZ0sz6XKKYKDSeff9hpzHmgx4KBt6zH0XQ==
X-Received: by 2002:a63:6841:: with SMTP id d62mr30398546pgc.17.1557744216431; 
 Mon, 13 May 2019 03:43:36 -0700 (PDT)
Received: from [192.168.1.7] ([117.248.72.152])
 by smtp.gmail.com with ESMTPSA id v66sm15246064pfa.38.2019.05.13.03.43.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 03:43:35 -0700 (PDT)
Subject: Re: [PATCH v2 2/8] Staging: kpc2000: kpc_dma: Resolve coding style
 errors reported by checkpatch.
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190510193833.1051-1-bnvandana@gmail.com>
 <20190512234000.16555-1-bnvandana@gmail.com>
 <20190512234000.16555-2-bnvandana@gmail.com>
 <20190513084217.GA17959@kroah.com>
From: Vandana BN <bnvandana@gmail.com>
Message-ID: <edce8621-86df-6e43-18e3-96d48851ca99@gmail.com>
Date: Mon, 13 May 2019 16:13:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513084217.GA17959@kroah.com>
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
Cc: devel@driverdev.osuosl.org, lukas.bulwahn@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On 13/05/19 2:12 PM, Greg KH wrote:
> On Mon, May 13, 2019 at 05:09:54AM +0530, Vandana BN wrote:
>> This patch resolves below errors reported by checkpatch
>> ERROR: "(foo*)" should be "(foo *)"
>> ERROR: "foo * bar" should be "foo *bar"
>> ERROR: "foo __init  bar" should be "foo __init bar"
>> ERROR: "foo __exit  bar" should be "foo __exit bar"
>>
>> Signed-off-by: Vandana BN <bnvandana@gmail.com>
> Better...
>
> But your subject lines are almost all the same, with some being
> identical to others, yet you are doing different things in each of the
> patch.
>
> So please provide a better subject line saying, in a unique way, exactly
> what you are doing here.
>
> thanks,
>
> greg k-h

Thanks, have sent another patch set with better subject lines.

regards,

Vandana.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
