Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE83F27B771
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 00:42:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B85987118;
	Mon, 28 Sep 2020 22:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RSiDhEQeiPkq; Mon, 28 Sep 2020 22:42:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE6ED87108;
	Mon, 28 Sep 2020 22:42:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B2AA1BF278
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 22:42:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 374A585BD3
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 22:42:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uZtvsCrhPxHY for <devel@linuxdriverproject.org>;
 Mon, 28 Sep 2020 22:42:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B55CA85BCF
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 22:42:49 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id e5so2951787ilr.8
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 15:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lfWeOnITWCeijLSuxzxiSIPC5xTsdC1wKnU7B3ZC5Lk=;
 b=beQywzattpQ6h9VxrWUUjSXbW2NzdQ7tN01P6Fxu3w0DElSH99yNXq/oeDtcSOP/9X
 EENXteBPokqZCQ4iUMEdnei6q+cCq5jNGrbY/ShMUDDnZsK5zrAkesLqvzbzRHGHUd2D
 ZDoxf29bX/+HC/gfcdQn6A5JV5Bg+hGw1IFG0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lfWeOnITWCeijLSuxzxiSIPC5xTsdC1wKnU7B3ZC5Lk=;
 b=JEb0U2kBzlvpJdPcvYICob93BwEON4pr4FdKOIyR60bzEGfagLixMB77OofKi2IxWa
 6v7BX6WJhDiuh31bWYmds3L6Zs+hOyNwBsSIYzNoMssupGyZRJdkLAVM7if8Spw61leI
 uC9rAfNeHLMxcfwQb/lkvdKz9qpJBiDrWPJZ8+2FEvCCM3Yoa2X6FH++4QQ3zCoNPpGK
 LFoYHH1FII7KrP9IWqR32WcnxjSytuq0l1t2RvaCj1PXWiVszv/nVan5uYOkLvl7hsWx
 4z3ygmglBq5WvAfDzwoF6P0bPNHDs9yQM61o4+3I9cwt3gGWAOgtc7n/Mt0uDMFIDhCm
 pyzw==
X-Gm-Message-State: AOAM530MGRzvm1fLhVrbZ0IAV+1jpVc10cSKzQkalTrQ0exdTQvZEDgK
 XK4dbWPf0iL8qC/GkJjsBp/Vhw==
X-Google-Smtp-Source: ABdhPJwo+pvtsIEQwf41bcDHTqwQ2dD5eUFFFgp4elRZ673xZA4id8e/WXiXlaCwN8OjTLklnmPUJQ==
X-Received: by 2002:a92:8591:: with SMTP id f139mr533509ilh.164.1601332969021; 
 Mon, 28 Sep 2020 15:42:49 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id l9sm1317402ilf.65.2020.09.28.15.42.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Sep 2020 15:42:48 -0700 (PDT)
Subject: Re: [PATCH 00/11] Introduce Simple atomic and non-atomic counters
To: Kees Cook <keescook@chromium.org>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <202009260920.DC9C2743@keescook>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <1aeccb4f-df7e-60bf-1d70-dfcff5bb6f87@linuxfoundation.org>
Date: Mon, 28 Sep 2020 16:42:46 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202009260920.DC9C2743@keescook>
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
Cc: rafael@kernel.org, linux-kselftest@vger.kernel.org, joel@joelfernandes.org,
 rric@kernel.org, shuah@kernel.org, devel@driverdev.osuosl.org, minyard@acm.org,
 corbet@lwn.net, surenb@google.com, linux-doc@vger.kernel.org,
 linux-acpi@vger.kernel.org, lenb@kernel.org, tkjos@android.com, arnd@arndb.de,
 bp@alien8.de, Shuah Khan <skhan@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org, maco@android.com,
 christian@brauner.io, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 james.morse@arm.com, hridya@google.com, johannes@sipsolutions.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/26/20 10:22 AM, Kees Cook wrote:
> On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
>> This patch series is a result of discussion at the refcount_t BOF
>> the Linux Plumbers Conference. In this discussion, we identified
>> a need for looking closely and investigating atomic_t usages in
>> the kernel when it is used strictly as a counter without it
>> controlling object lifetimes and state changes.
> 
> BTW, I realized the KSPP issue tracker hadn't broken this task out of
> the refcount_t conversion issue[1] into a separate issue, so I've created
> it now: https://github.com/KSPP/linux/issues/106
> 

Cool. Thanks.

-- Shuah
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
