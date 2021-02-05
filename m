Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F85E3111CC
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 21:03:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C2AF786C3A;
	Fri,  5 Feb 2021 20:03:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id InQl_RrXSsp5; Fri,  5 Feb 2021 20:03:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A9AAC86C22;
	Fri,  5 Feb 2021 20:03:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C3A01BF9D1
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 20:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F407986C26
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 20:03:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I7zW0hkOlRhm for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 20:03:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5425286C22
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 20:03:23 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id t25so8090448otc.5
 for <devel@driverdev.osuosl.org>; Fri, 05 Feb 2021 12:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gbEhNHNmugKLJCiX2KXjV/LxdZ+gCz+sfTdhU2+sb8o=;
 b=hbBndiN61VScugSn8g5PdH5dOEpNc1vTlDgcO3sD8O0Q6YfsnCaurJGZNYTTpb+NeL
 2C00ky9tWgh3CuOv2jxbTmdNpPk9XqWrjq7gXRCFpc/iaSrlsuWJa6bt03UGWa5Rq276
 hTV4GgzREQQ4e8s4GIvRWcWvDOh9qfgu3LyAQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gbEhNHNmugKLJCiX2KXjV/LxdZ+gCz+sfTdhU2+sb8o=;
 b=hY8lm/YHmTPLmeEWPhmt0CabJpIIOFQM0ElstcVa4cZz/Vey/9N75sqAOu8hiPo8xV
 E6j2lgci0vEXizzfV65qx3d6eHfYi5lKS3Mhbz1G3SxXXjQz1ihrOVZJa+I7+yWrpvkb
 muzHYlDy8CjJP7pMhG83V9vIERQ9UuUfxHl8ruUKeyYVZxY3qy18b6sN8V3hljjG1M8H
 W1xxUU/3ENYXcqWIKR0UKvp9SNqNEmgYhtU45uo48jHMR0unARQO88yE9AYbx9Vsv4I9
 p/+3flES9KNY8HvFo4OKpHB99AwDXGmgazPQngvyaIm4yJlqW6uDZz3c/kg7x2FhkQZ5
 oU3w==
X-Gm-Message-State: AOAM530n3ty/F4tZRuAOCqREtcRIuQcKedUCa4qSjvqtcrSBw4YOQy78
 FKouwtBiwJ6iB5NveShpLyBUwQ==
X-Google-Smtp-Source: ABdhPJyzu0tvcLo4s7d2FrIQ4o1zmYD8+me/HyP+MRVvqQ5v4ul3YMRLWMniCJpUPs1SigUqE0QdTg==
X-Received: by 2002:a05:6830:1dad:: with SMTP id
 z13mr4489856oti.223.1612555401135; 
 Fri, 05 Feb 2021 12:03:21 -0800 (PST)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id m7sm2002833otq.33.2021.02.05.12.03.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Feb 2021 12:03:20 -0800 (PST)
Subject: Re: [PATCH v3 1/7] seqnum_ops: Introduce Sequence Number Ops
To: Greg KH <gregkh@linuxfoundation.org>
References: <cover.1612314468.git.skhan@linuxfoundation.org>
 <23f6347a7bb9f902babe7351f71b23644035673d.1612314468.git.skhan@linuxfoundation.org>
 <YB0WzBnLd+OcpxEE@kroah.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <2fe15f90-2e33-d018-0d5d-cabe3846ed98@linuxfoundation.org>
Date: Fri, 5 Feb 2021 13:03:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <YB0WzBnLd+OcpxEE@kroah.com>
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
Cc: devel@driverdev.osuosl.org, tony.luck@intel.com, keescook@chromium.org,
 rafael@kernel.org, peterz@infradead.org, corbet@lwn.net,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, james.morse@arm.com,
 linux-kselftest@vger.kernel.org, bp@alien8.de, lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2/5/21 2:58 AM, Greg KH wrote:
> On Wed, Feb 03, 2021 at 11:11:57AM -0700, Shuah Khan wrote:
>> +static inline u32 seqnum32_inc(struct seqnum32 *seq)
>> +{
>> +	atomic_t val = ATOMIC_INIT(seq->seqnum);
>> +
>> +	seq->seqnum = (u32) atomic_inc_return(&val);
>> +	if (seq->seqnum >= UINT_MAX)
>> +		pr_info("Sequence Number overflow %u detected\n",
>> +			seq->seqnum);
>> +	return seq->seqnum;
> 
> As Peter points out, this is doing doing what you think it is doing :(
> 
> Why do you not just have seq->seqnum be a real atomic variable?  Trying
> to switch to/from one like this does not work as there is no
> "atomic-ness" happening here at all.
> 

Yes. This is sloppy on my part. As Peter and Rafael also pointed. I have
to start paying more attention to my inner voice.

thanks,
-- Shuah



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
