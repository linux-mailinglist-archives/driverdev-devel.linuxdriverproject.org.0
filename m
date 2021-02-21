Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A296320A85
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 14:23:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB8986F4DA
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 13:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LizWSwqswjEl for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 13:23:39 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id B9F4C6F4EA; Sun, 21 Feb 2021 13:23:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 645DE6F478;
	Sun, 21 Feb 2021 13:23:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8A9B31BF951
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:23:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8701885D72
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:23:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A7F6MTsnQXhi for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 13:23:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 07BA485D61
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 13:23:12 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id 201so1802390pfw.5
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 05:23:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=DHV2IqAESmDmvK+skITBNU6iCUPe9/Bxc8okZh/sX10=;
 b=sZMagYH7p42jD47UvJ/SNJUYZygNeET71vZCajUmNEo5p6dXAmfrggMBhlXGWnx9SF
 aMpQDwaBjYxRJLwNtZd1kvdhjXKcM4HEyeE2EO7zM94NzjEOcFSGfLXWPChQeSVNu1GM
 jYv7UFREw/4ya0OfrXPJe0eQOV9vtSzFP30rydV0edkunEkvxGea0eWNcldS1ZT4JMnW
 OcQr/Ls0KIkQbXQQ3KaeohnpUDHx4EZoWMNF9Tto3KAtb45F/2b1DjTvf3pqizIa16SB
 G0smyoJzv+6u+S5AcNt8JGGDds5SdwVtkKhG4IFchvHygyCLhYRHCVhKN9Tr+pxjAVbO
 j4tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=DHV2IqAESmDmvK+skITBNU6iCUPe9/Bxc8okZh/sX10=;
 b=sSXjmjlRcMu1qzMgi9srNtjcL/w1JnkWgxm5vbE2h+jzeYxkC+8WRWEAatX75ribfL
 L/GljqPXLRCD0NCmas3mAWNr/k5SEMZhDccVk/50qPzoAvg7mYbp8TGsFliOULo+F2Kh
 gP9o/N93l+8tPrnFdrDi69WbeN0VojM/OOUPZ+fAwO9D/p07t2ZUl50PCZ57z4hIRLPY
 o91uEWcg1dYV0XHx0dF8A/EsB37gnsgBb7Wn5J6VAIloz6iRAj059zSGvNopTZ5Af4fj
 Hfuim5Qh7caBm2K/Z1nsXP1E7M4ZdbntIxM94G5bHPSSCv6YX1LdFDzA3u8Jg3RlbHc0
 LhYQ==
X-Gm-Message-State: AOAM5303jf1HdTRWcqnN1F5ACBhE9n6fXviFDYauyvjJZzmo4LQKo4Qe
 jXBAy1iaoxH7Y+FhNdzmxFg=
X-Google-Smtp-Source: ABdhPJzNjkdyRxo47eHtEpwfdVPu/g2m8LjWdkdz09hh12N5btTpSvWDhRfJdOIk/NoraTJ9xVCuhQ==
X-Received: by 2002:a62:e808:0:b029:1e5:f10a:e6d8 with SMTP id
 c8-20020a62e8080000b02901e5f10ae6d8mr17757411pfi.23.1613913791447; 
 Sun, 21 Feb 2021 05:23:11 -0800 (PST)
Received: from ?IPv6:2409:4064:4e8b:6666:843b:eeba:783:b146?
 ([2409:4064:4e8b:6666:843b:eeba:783:b146])
 by smtp.gmail.com with ESMTPSA id c26sm17987124pfj.183.2021.02.21.05.23.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 21 Feb 2021 05:23:11 -0800 (PST)
Subject: Re: [PATCH v2] staging: wimax: i2400m: add space before open
 parenthesis
To: Greg KH <gregkh@linuxfoundation.org>
References: <20210220104816.13263-1-sssraj.sssraj@gmail.com>
 <20210220134652.16127-1-sssraj.sssraj@gmail.com> <YDJaw5p/VM2qhULU@kroah.com>
From: Rajesh Kumbhakar <sssraj.sssraj@gmail.com>
Message-ID: <a29fb121-2f22-fffa-630d-e99b380e4121@gmail.com>
Date: Sun, 21 Feb 2021 18:53:06 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YDJaw5p/VM2qhULU@kroah.com>
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
Cc: devel@driverdev.osuosl.org, sfr@canb.auug.org.au,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On 21-02-2021 18:36, Greg KH wrote:
> On Sat, Feb 20, 2021 at 05:46:52AM -0800, Rajesh Kumbhakar wrote:
>> netdev.c
>>
>> fixing style ERROR: space required before the open parenthesis '('
>>
>> Signed-off-by: Rajesh Kumbhakar <sssraj.sssraj@gmail.com>
>> ---
>> Changes in v2:
>> 	- Removed filename from commit message.
> filename is still in commit message :(
aah, not again. please bare with me this last time, will surely never 
repeat this.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
