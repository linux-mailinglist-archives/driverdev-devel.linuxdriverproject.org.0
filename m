Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FC9194674
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 19:27:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4531A88760;
	Thu, 26 Mar 2020 18:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZKerza2MP7P8; Thu, 26 Mar 2020 18:27:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DFB0C8867E;
	Thu, 26 Mar 2020 18:27:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D04DB1BF372
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 18:27:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA88A88739
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 18:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2xiba44bMSdK for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 18:27:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3A4BC8867E
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 18:27:18 +0000 (UTC)
Received: from [192.168.0.109] (c-73-42-176-67.hsd1.wa.comcast.net
 [73.42.176.67])
 by linux.microsoft.com (Postfix) with ESMTPSA id 87EE220B4737;
 Thu, 26 Mar 2020 11:27:17 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 87EE220B4737
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1585247237;
 bh=o38dnb32CGjX8brBUo5ZouRpDyVR7JANEbmWnk2DbUU=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=bZymhhX+VPOoHNwMoJgxan6I7+DGZTBmGuKMza4vKzlWiWCfLq8FrRpPUkpFz9P58
 5rAHHCrvJdAQTRuKPiD5Jsxaq7DxHoW5OcbjdlWKJoAy4vUW771WwG2DXiTGGH1Qfd
 5LiULj+UfirXnyVf22yPVBW5pNe+XxmEvP0jDfyY=
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Compress
 return logic
To: Simran Singhal <singhalsimran0@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <20200325214312.GA1936@simran-Inspiron-5558>
From: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Message-ID: <27ca4063-f34b-030d-f593-1d9a4f3c1165@linux.microsoft.com>
Date: Thu, 26 Mar 2020 11:27:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200325214312.GA1936@simran-Inspiron-5558>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 3/25/20 2:43 PM, Simran Singhal wrote:

> Simplify function returns by merging assignment and return into
> one command line.

"Simplify function returns by merging assignment and return into one line".

You could change the subject also to "Simplify function return logic".

thanks,
  -lakshmi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
