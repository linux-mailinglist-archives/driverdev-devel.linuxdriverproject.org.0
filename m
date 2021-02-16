Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C09B231CD2B
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 16:49:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7505784484;
	Tue, 16 Feb 2021 15:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SJbgiliUoyH7; Tue, 16 Feb 2021 15:49:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7A5C284488;
	Tue, 16 Feb 2021 15:49:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DAC791BF59E
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 15:49:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D4D698664C
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 15:49:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QtncYj307WyG for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 15:49:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
 [209.85.166.50])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 21EB786786
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 15:49:36 +0000 (UTC)
Received: by mail-io1-f50.google.com with SMTP id i8so6307950iog.7
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 07:49:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ieee.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=y7FAAueIFMAXFTE9aqqwaVuxVLzWJ41n1RibstBf/uw=;
 b=SHCf+Lr8Fai0+JIKF6loXEw9yJRu+EiA1D8AdZuiQpbpVYhDAoGb5wb0MZdfDrE+I8
 wqw5SVPw5Haw+RsZQ25HkOw81kkwDgzLKgQWVChvG9y2l/EYO5gmn0d3nglSTU5XWHoA
 xosoQ8MpYSKhzMu6bczvWbOudi2SHjqAjmSZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=y7FAAueIFMAXFTE9aqqwaVuxVLzWJ41n1RibstBf/uw=;
 b=PHF5BtHcZuO7AjVG1yPXmxCbYp8J7gWSu7arUnayj9AZIdKHikrrPWWMuZmu5VDTcO
 n8D5FK6pyxKaly5iKNJYaEreiIWX0o+PVRRucOoyvyqZwi6mRIlpUECpBy8DJMyrfXI4
 eO8TPsHMeHLSwah6ZpYCY8q+dbm5C1lTcatOTH4yiKXeql3oqFrWW2okGIjPcEi/EAYG
 grB2UZlLBTo1okP3Fwd2OjMHAZFGzXYsDH7IBxI5Qd9Hqnret0AAuTS9kmJceZoINqyr
 Amnxsh45bT6C2O4yWhiOUVpe2ZnaOTTgOWYS1rAKRP2jBZQR3kXkA0/KG1qtGG2djzUJ
 QIxA==
X-Gm-Message-State: AOAM53361VYm3aJJF8rjUEmGC7zEp7ZDzphvSSpjNp9MQdSbASi2XaOG
 OaJ5/Qi1vLkBfOWgsji5sdKt9Q==
X-Google-Smtp-Source: ABdhPJwUZNvwU49wt0M7ae6klwO05ufg/idd6YcypAKodnZIVmawBJoecT36s9t00oRUiMz2HIYfrw==
X-Received: by 2002:a5e:a911:: with SMTP id c17mr17526518iod.20.1613490575345; 
 Tue, 16 Feb 2021 07:49:35 -0800 (PST)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id i20sm10877449ila.82.2021.02.16.07.49.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Feb 2021 07:49:34 -0800 (PST)
Subject: Re: [PATCH 02/13] staging: greybus: Switch from strlcpy to strscpy
To: Kumar Kartikeya Dwivedi <memxor@gmail.com>
References: <20210131172838.146706-1-memxor@gmail.com>
 <20210131172838.146706-3-memxor@gmail.com>
 <b565bdae-10a9-9b6c-ae60-dcee88f7dedd@ieee.org>
 <20210216154800.jg24ahfj52t6qgbd@apollo>
From: Alex Elder <elder@ieee.org>
Message-ID: <8b51d270-5d25-919d-2034-8452513e3eaf@ieee.org>
Date: Tue, 16 Feb 2021 09:49:33 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210216154800.jg24ahfj52t6qgbd@apollo>
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
Cc: linux-fbdev@vger.kernel.org, Jon Nettleton <jon.nettleton@gmail.com>,
 Mark Greer <mgreer@animalcreek.com>, Marc Dietrich <marvin24@gmx.de>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 ac100@lists.launchpad.net, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Florian Fainelli <f.fainelli@gmail.com>, Daniel Drake <dsd@laptop.org>,
 Jens Frederich <jfrederich@gmail.com>, Viresh Kumar <vireshk@kernel.org>,
 Robert Richter <rric@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Johan Hovold <johan@kernel.org>, Ian Abbott <abbotti@mev.co.uk>,
 Al Viro <viro@zeniv.linux.org.uk>, linux-tegra@vger.kernel.org,
 William Cohen <wcohen@redhat.com>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Alex Elder <elder@kernel.org>, Teddy Wang <teddy.wang@siliconmotion.com>,
 greybus-dev@lists.linaro.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Mike Rapoport <rppt@kernel.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2/16/21 9:48 AM, Kumar Kartikeya Dwivedi wrote:
> On Tue, Feb 16, 2021 at 08:24:59PM IST, Alex Elder wrote:
>> This is a good change.  But while you're at it, I would
>> appreciate if you would convert a few spots to use
>> sizeof(dest) rather than a fixed constant.  I will
>> point them out below.
>>
>> If this is the *only* request for a change on your
>> series, please tell me that and I can sign off on
> 
> So far, this has been the only request.
> 
>> this without you implementing my suggestion.  But
>> if you post a version 2, please do what I describe.
>>
> 
> I will incorporate these if I end up sending a v2.
> 
> Alternatively, would a separate patch with your suggestions applied on top of
> this be acceptable, if I don't?

Yes.  Assuming you do that, for this patch (as-is):

Reviewed-by: Alex Elder <elder@linaro.org>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
