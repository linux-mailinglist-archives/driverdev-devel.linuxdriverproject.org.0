Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A540B303D6
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:09:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 47ED3203DF;
	Thu, 30 May 2019 21:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RZdqoNv78SBp; Thu, 30 May 2019 21:09:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 46A7B20013;
	Thu, 30 May 2019 21:09:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0AEA91BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0769084EEA
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:09:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TU_CaWSnV1mv for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:09:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D274584EDB
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:09:30 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id q17so4729734pfq.8
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 14:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=j14yKpcraW/rk5VffAXFmNUym97W4z1OGk3c597/tVM=;
 b=QK1diwgown3rJt0cB8vXV26gQVEfLpYfy8VwmoYRrIcAwHL7l7U2IUd2s9XOHUzm1j
 vtv9rpjrwza1F/3QNmq16VjemwsPHO+orrG+fUilKc0WCS3fGHS6imwQrF88suA6xOc8
 04gYKkUso1YipS9qM5DGa5zgLlYssgmFGnZEY8hcDccKCxmGIsMrE4jtpSbCsyMDsrmI
 Frq8a0F6p2svJn5nfeZvhGnEbOgA4oEEb0PPvwu2ogvJ1NYcBdVO8Me949P0M6b2t2bF
 tXxoY8n62PSpu/e1EVoSPmV1B+dPr9F4vmsliOPvPsR4zkprfPmbHyc+osmwMwSJYUXG
 Hphw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=j14yKpcraW/rk5VffAXFmNUym97W4z1OGk3c597/tVM=;
 b=CwYzpBw++x+MXeSS7dlwFSVxlt4iycYaKL5NAL/lyWO3JC2i5P9WCl7e7DxPHUvFtH
 9JnScf17GVR7XThCXFkJ7wZQ5q65Own8WTDgtynNdkgbfAEopNhaGHw5BdGb8uFtg5J9
 837NbCCEMyNQNmS0nLLRYJk20xo+r7Tctzo2eQncAGy093fwO51UnUBDOtSiHesbRpm7
 i+om9AxeAGY7jwhfCrFlB6x6LIJCBHUBudBWPi1PXpiYQlFQo8GqP3xqkv++jENr93it
 VrgFYqshjDRxbu5CqK3DXCBXl62yZN68W7uDNJhcS9U53m7s+rMfYofyc/lzhbotXb9q
 P1hg==
X-Gm-Message-State: APjAAAV5DaJiYBIJm/NClxNX+fIseGXjVtyQHAw8OReExXSP/Zaix+91
 Gqtbo4usUhWvM33MA5XrP5F20Iu6
X-Google-Smtp-Source: APXvYqyyMX/HcnvTDhYbABKRcF/fe6hNOlg0dP/SvOirSzwJX44yR6CjJMc8vQDER9r8e8H3a8OW/A==
X-Received: by 2002:a63:1d05:: with SMTP id d5mr5356299pgd.157.1559250570518; 
 Thu, 30 May 2019 14:09:30 -0700 (PDT)
Received: from [10.0.2.15] ([47.15.209.13])
 by smtp.gmail.com with ESMTPSA id p21sm3799580pfn.129.2019.05.30.14.09.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 14:09:30 -0700 (PDT)
Subject: Re: [PATCH] staging: media: davinci_vpfe: Remove variable vpfe_dev
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190530204718.29892-1-nishkadg.linux@gmail.com>
 <20190530205540.GA5308@kroah.com>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <9b870baa-4d15-cb72-0579-6bb6ca57cadd@gmail.com>
Date: Fri, 31 May 2019 02:39:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190530205540.GA5308@kroah.com>
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
Cc: devel@driverdev.osuosl.org, code@wizofe.uk, linux-kernel@vger.kernel.org,
 hans.verkuil@cisco.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 31/05/19 2:25 AM, Greg KH wrote:
> On Fri, May 31, 2019 at 02:17:18AM +0530, Nishka Dasgupta wrote:
>> Remove variable vpfe_dev and replace it with its value (since the
>> function otherwise uses values directly instead of local variables).
> 
> This says _what_ you do.  But we can see that in the patch itself.
> 
> You need to say _why_ you are doing this.
> 
> There's no need for this change at all.  Again, as I have said before,
> we write code for developers to read first, the compiler second.  By
> making these types of changes you are making it harder to
> read/understand by a developer, and providing absolutely no benifit to
> the compiler at all.
> 
> So it's actually making the code worse!
> 
> not good at all.
> 
> Please reconsider this type of change, as I keep asking you to.

Okay. In this case I thought it wouldn't make it worse since the 
function is low on local variables anyway? Clearly I was wrong, so I 
won't count this case as an exception in future.

Thanking you,
Nishka

> greg k-h
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
