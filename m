Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5903187CE
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 11:10:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1279586DAA;
	Thu, 11 Feb 2021 10:10:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XpaxteCTe6j1; Thu, 11 Feb 2021 10:10:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 800E186B43;
	Thu, 11 Feb 2021 10:10:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A007F1BF4D5
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9B35886E68
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:10:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cFKh3agzJlf6 for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 10:10:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
 [209.85.214.169])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0E960862A0
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 10:10:43 +0000 (UTC)
Received: by mail-pl1-f169.google.com with SMTP id a16so3056740plh.8
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 02:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0UWUI/kkDinmay7MvgnYpZn7ou/nW9tAWna4jMvJtvY=;
 b=X4/N9a6jFvnHFA8dpCYtIvGz3rj4GP6BpvaHedwgXzGOBETztL3uI14VkXupf818UB
 SOOaaJQad81JdAO9Dx1t2cliZrdNQ4ZkYaukHwhRmkeMp+fUTVebo5/67atzKn/DpRAt
 6ykqKZ7p7OmvD7ru/GeeAlACeA67u1sMgkBsiMoK+eoPws8qtwwAFsdoh8Ic164VkFZC
 qkkDpVdUEAlgzq7wFfIY8jveTpiBNk4uQ4eBmwXUga99ETm+1kboWHiISCz5PU7eyOVf
 Kxu7gh8HrcB4cHLxabl+U8RwpIHDGSgtWLhFNhCfgL8lf54R442C6qQuMPlhCTvdmnd/
 Em5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0UWUI/kkDinmay7MvgnYpZn7ou/nW9tAWna4jMvJtvY=;
 b=KTes0WZGKV39n2OC/odD/uN2mpTNxdp3W+YCR8f68wj/WiksHzQFOLjKkNRTLBJQzZ
 zTn8iRw5tkswlHJWWql9Q0LYRAzJjj44ELYO5spHSUci/tj86qzWKyKGkQFIFE0eGZ7C
 03OtOrLZiSO9Yyl3T239lmEESoJALiZObS5P5zm2zrpSTvBLHAolxI1W7Hzj3NqirthA
 diiPjrRH3OrboZqLNYc1uScbWiZBr8vZHI/aMyEpczH7eRFqNORU+hbkfMpyWdssHyJm
 1/HCkM8FiThbpsy28+BTuHr815A+fWnoRdi0k/LQgN9tqDKg7oIR05PvQ/vk+3OunFKl
 VxdA==
X-Gm-Message-State: AOAM530wJiLKvfH/AxXMoF1hspdJM6qp7hr7j/TzWR4/GIUDXVE33EVO
 rv6fdeRERJ0POw5wUqOj82ORMA==
X-Google-Smtp-Source: ABdhPJyI4I2N7+f2yBokicCsqPV12GPsfMpH8tS1rxFrBawOPBvQFC5Pa0IK/8oSkGKZYpcmRkkM8w==
X-Received: by 2002:a17:902:c408:b029:e2:ba09:d442 with SMTP id
 k8-20020a170902c408b02900e2ba09d442mr6875531plk.83.1613038242539; 
 Thu, 11 Feb 2021 02:10:42 -0800 (PST)
Received: from localhost ([122.172.59.240])
 by smtp.gmail.com with ESMTPSA id mv14sm7847662pjb.0.2021.02.11.02.10.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Feb 2021 02:10:41 -0800 (PST)
Date: Thu, 11 Feb 2021 15:40:39 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [greybus-dev] [PATCH 1/1] staging: greybus: Added do - while in
 multi statement macro
Message-ID: <20210211101039.m5q26qgxififotqp@vireshk-i7>
References: <20210211095444.54447-1-hemanshagnihotri27@gmail.com>
 <YCUAMgFa6i9vl9An@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCUAMgFa6i9vl9An@kroah.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, linux-kernel@vger.kernel.org,
 johan@kernel.org, greybus-dev@lists.linaro.org,
 Hemansh Agnihotri <hemanshagnihotri27@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 11-02-21, 11:00, Greg KH wrote:
> On Thu, Feb 11, 2021 at 03:24:44PM +0530, Hemansh Agnihotri wrote:
> > This patch add fixes an checkpatch error for "Macros with multiple statements
> > should be enclosed in a do - while loop"
> > 
> > Signed-off-by: Hemansh Agnihotri <hemanshagnihotri27@gmail.com>
> 
> Any reason you didn't test-build your patch before sending it out?
> 
> That's a bit rude to reviewers :(

I also wonder how two people stumbled upon the exact same thing at the
same time. Copy/paste ?

https://lore.kernel.org/lkml/20210210221439.3489-2-yildirim.fatih@gmail.com/

And of course NAK for the patch. The macro is used outside of any
other routine, and is actually used to create routines. No do-while
required here.

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
