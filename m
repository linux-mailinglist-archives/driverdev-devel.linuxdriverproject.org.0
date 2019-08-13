Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E638ADED
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 06:40:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D31F786130;
	Tue, 13 Aug 2019 04:40:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pbSGdLe9PX_h; Tue, 13 Aug 2019 04:40:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29B5885683;
	Tue, 13 Aug 2019 04:40:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4365A1BF369
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 04:40:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3D93287D86
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 04:40:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xpvyl2r9zJBZ for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 04:40:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0F5E387D80
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 04:40:23 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id bj8so1734941plb.4
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 21:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8GLOZFQ56OAbaoXlhnRk+YHGtv4hGs6RGM5Kij6lBIU=;
 b=arBD8dMtva+ZxyXyeFcMnzBFvC4FQd0y8a9O5lBi42o+2eDs6v/ZqbdjP+jZMqRW4U
 7FhLNPZ2AMQD7IuANmkahImpWEUKKUNuhoWJ6htJnQsruvELU0Yz0jz2ejKtvWvrqjZY
 IjP+6MZ+AoRreddxXB65EqpBvMExAkhzZdCCkULiq3CyF91KfWHqag5LNc/VxwC0hgQk
 zvZuhDH9TY8F3VJARTwzMOlQoWGsxdfWUIAvT6w8RhxpCn7oxRC9taJxUzeBFH1KBEu2
 1y4IJvbZ3RjanJR6BiPJCMxX6w2ty2hVrABtKAU8U0LwKWcgYtLaPmx3ER4kB5ro4arA
 oNEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8GLOZFQ56OAbaoXlhnRk+YHGtv4hGs6RGM5Kij6lBIU=;
 b=px68jahIC99OruDHGm7hCde8CKUem4/wYUbED2HG42Q8vyMwac+f+Tce3eo8nlQLSW
 H8BhTewLqi4vgw5EyLYybhBSssG32TbES3aJ/30ANRUHnf1nsiVTWyHumvAejgk6Qdj2
 LubmrbjU+cWromro6FZlAPqncrzOsipB5PS1dJQoHj5JhAeIFUiu64SP5ICiG4BYFoXY
 Q3v/MGRqJ/m9r8KwGuWI2jXoijB6aUWrco41KHPndt6Dlu9GbzmxKdzO3rFvnkbVna4u
 dCmD2vFl0B2SL/Cea0hZc/5SEqaD+IE7Ggbb663ep+SzPoADzo1kAbR6JmL4+OFuEV9k
 Qcrw==
X-Gm-Message-State: APjAAAXnT+vprSyzy+otGHeYWLKL3qqa45LcR5WauYWb96fQd14wKjvi
 zXJu2aFimidjnCXVG+kFULWIgyyG
X-Google-Smtp-Source: APXvYqz6H5ywLEki7BeCk0WrXE1/ruT/tdzbA1G2QjNTP7pVJzs1Mvsx2Rq9cN3/D1RFSHIR7MAyNg==
X-Received: by 2002:a17:902:830c:: with SMTP id
 bd12mr36747709plb.237.1565671222576; 
 Mon, 12 Aug 2019 21:40:22 -0700 (PDT)
Received: from [10.0.2.15] ([122.163.110.75])
 by smtp.gmail.com with ESMTPSA id x25sm144958968pfa.90.2019.08.12.21.40.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 21:40:22 -0700 (PDT)
Subject: Re: [PATCH 01/11] staging: rtl8712: _r8712_init_xmit_priv(): Change
 return values and type
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190809052353.5308-1-nishkadg.linux@gmail.com>
 <20190812143701.GA27411@kroah.com>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <e4e5c320-afa6-9a26-1c00-c7878ba9e1b7@gmail.com>
Date: Tue, 13 Aug 2019 10:10:17 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812143701.GA27411@kroah.com>
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 larry.finger@lwfinger.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 12/08/19 8:07 PM, Greg KH wrote:
> On Fri, Aug 09, 2019 at 10:53:43AM +0530, Nishka Dasgupta wrote:
>> Change the return values in _r8712_init_xmit_priv from _SUCCESS/_FAIL to
>> 0/-ENOMEM respectively. Change return type from sint to int.
>>
>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> 
> I only received 9 patches in this series.  I'll try to apply these, but
> if they fail, please fix up your tree, and resend the remaining ones.

Okay. I'm resending the 4 patches that haven't been applied yet.

Thanking you,
Nishka

> 
> thanks,
> 
> greg k-h
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
