Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF51E1AF8EC
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Apr 2020 11:23:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1C4502041B;
	Sun, 19 Apr 2020 09:23:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V9cnL3sWg0Qv; Sun, 19 Apr 2020 09:23:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 758481FEDF;
	Sun, 19 Apr 2020 09:23:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF8B41BF5DF
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 09:23:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CC651848AA
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 09:23:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BuLiA2B-o1Jl for <devel@linuxdriverproject.org>;
 Sun, 19 Apr 2020 09:23:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 27BCD84836
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 09:23:00 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id a25so8249485wrd.0
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 02:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UdyUdSW1ErJ1sElWqPc011PRfio7esFxjS/Km3qvG0I=;
 b=urIkt/9STP283VXro1YX6bE/Tjw2e0+xM5LL0yYDlxCuudFZPlMm7xvAdTV80SyCJD
 s41QmoDr6wRN5mCjGr5PEIoywNUxoYMku4DajUBRxUCIxAcbTwfTHQUJOcehXra5DV5w
 BMIs0wrY+tynpoaoZQZlwhJOhVzkj+aMEGN9dUYVAuMtoNbDa9CXTOv9TsXt2sXx23cv
 N19VIdO4mwkBJoEZZ6gGZFNQoaVEtSItyYgKEJ4F+TSCMbj6FJnP7zDeZBVCxrL365u/
 yFzgBGfw6LSKLKdpz37FnVBEyvEaty4E//m8isB3WP79DyY/jff6zTyBBHqEknush/Id
 z41g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UdyUdSW1ErJ1sElWqPc011PRfio7esFxjS/Km3qvG0I=;
 b=ct6/JbBE25RbUu/HHK5Xk1ZMlWdExa8UZgAMe0zghklQ+OELjmuyX7J8Lx7G+8LdQO
 +jPz6djAbWtROVhDp2K/LhNm4j8iuPfk7zOonB5WN41fO9MKu3zvEcZvL4AZKOsYuCOm
 F/u8gX2OPzt/L30KSLdp6wyGA7XFJTPnIOJmq59xp5MG4b6yL7FDB3NCAZpgtXtjcmt7
 o3TYlBQXXw27R87CgQsgB6qm7BDiBz+ofZx3jYqSoeTQWoCY4EQDWGtnnufjVjr0Wr0V
 814PoIzjyMBZWr1dXNwrwIHyVWySKH6wjCcYHILqTIwCMuHRlpQBCWW+44vFjL6I1gQA
 tftA==
X-Gm-Message-State: AGi0PubbSbhbnZpjZ78rr6H2n1EBJZ5k8tzO6Uj+Hc/aqzIY0yIGTegw
 qmOkiUi9sa3S9BOrFFb+118=
X-Google-Smtp-Source: APiQypL+N4qWWrGUmVNoRGX4XnqDBzYU/AYGhFMaikBa5miNgA3ld4fap8lKryI2GBSCQYMO9xhRJA==
X-Received: by 2002:adf:d0c5:: with SMTP id z5mr2836782wrh.410.1587288178362; 
 Sun, 19 Apr 2020 02:22:58 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.57.threembb.co.uk. [188.29.165.57])
 by smtp.gmail.com with ESMTPSA id
 u3sm29420682wrt.93.2020.04.19.02.22.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Apr 2020 02:22:57 -0700 (PDT)
Subject: Re: [PATCH 2/2] staging: vt6656: Fix functions' documentation
To: Oscar Carter <oscar.carter@gmx.com>
References: <20200418123659.4475-1-oscar.carter@gmx.com>
 <20200418123659.4475-3-oscar.carter@gmx.com>
 <adc4bc72-5c80-e8f4-8d48-052109ae18b7@gmail.com>
 <20200419074717.GA3244@ubuntu>
From: Malcolm Priestley <tvboxspy@gmail.com>
Message-ID: <42190e0e-4167-3cd6-0e52-d240ae67a502@gmail.com>
Date: Sun, 19 Apr 2020 10:22:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200419074717.GA3244@ubuntu>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "John B. Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Stefano Brivio <sbrivio@redhat.com>, Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 19/04/2020 08:47, Oscar Carter wrote:
> On Sat, Apr 18, 2020 at 07:05:53PM +0100, Malcolm Priestley wrote:
>> Actually I don't really think the function descriptions are needed at all the
>> names of the functions are enough.
>>
> Then, it would be better leave the documentation as it was before or remove it?
> 

I would remove them all except for comments inside functions.

Regards

Malcolm
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
