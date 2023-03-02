Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEE76A7D58
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Mar 2023 10:10:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2511417FC;
	Thu,  2 Mar 2023 09:10:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2511417FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nHusA7TGVp4m; Thu,  2 Mar 2023 09:10:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D4DB409A8;
	Thu,  2 Mar 2023 09:10:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D4DB409A8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9EAD81BF322
 for <devel@linuxdriverproject.org>; Thu,  2 Mar 2023 09:10:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 78002409A8
 for <devel@linuxdriverproject.org>; Thu,  2 Mar 2023 09:10:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78002409A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ydbzjQezDy_n for <devel@linuxdriverproject.org>;
 Thu,  2 Mar 2023 09:10:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B53B240934
Received: from mail-yw1-x1143.google.com (mail-yw1-x1143.google.com
 [IPv6:2607:f8b0:4864:20::1143])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B53B240934
 for <devel@driverdev.osuosl.org>; Thu,  2 Mar 2023 09:10:17 +0000 (UTC)
Received: by mail-yw1-x1143.google.com with SMTP id
 00721157ae682-536bf92b55cso414837277b3.12
 for <devel@driverdev.osuosl.org>; Thu, 02 Mar 2023 01:10:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
 b=Hwy/DzdIH0W8RnSXkRchPtxbIE8idoEHT0vHeb86EHAl3Fe+1d3IriDgr4tvh8cZlT
 uTV1Kq6TUgR3fKpadyC8ZmabXu8s4Sl/j0garFfwllktXRme5P7KP7IPjXee1gOIwAkP
 WA0U9TPp4zqAiI1FMXSyGvw7saIjKpmd2AMeeXVCn9c8tGAHIN4RHXf2BPFHpi3NPkJB
 7R4sVCqyRqv/7fgiQq7gznoB/ppzURqEFPQ6v5bwccKO1i+YvqhATBN261NE0o7FL6xu
 0gN1ryFu+Ya714awcuJmrW5URIWUhp4XDx0TZnlY1LomCiYZNSGvPE2a+f2pAKAlzvA3
 aHVQ==
X-Gm-Message-State: AO0yUKUF02D7eq0a/PUszst0tkjJ3eznq3rFn+TE22KvHMTU8ep++hT5
 xWNoOupgWxUGalD33lreiV2bXProfJU8kRRXtGw=
X-Google-Smtp-Source: AK7set82Nuex+DjQVwRck2zzmQQN1L+xmGtWiPYAgMoqAyQXgQtB2ZdQlbhDn4rWrVCte9xbSz8k4kb130Tgv9O2KcQ=
X-Received: by 2002:a81:1252:0:b0:521:daa4:d687 with SMTP id
 79-20020a811252000000b00521daa4d687mr963200yws.0.1677748216302; Thu, 02 Mar
 2023 01:10:16 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7000:6d93:b0:481:2fd1:a382 with HTTP; Thu, 2 Mar 2023
 01:10:15 -0800 (PST)
From: Dr Ava Smith <avajuly6060@gmail.com>
Date: Thu, 2 Mar 2023 10:10:15 +0100
Message-ID: <CAD_jEOtGgav-hAHsQau-HOTEDDiAM1kAcOwXVYaHe8i7zGFA9w@mail.gmail.com>
Subject: Hi
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
 b=OOXgXPEn795LBJvX8HhfNRrSxCFjS4dJCTkHJtpoROsdw6bjmdLZHMSg8zjg9ibPo0
 cc16SOV11KSQ88ETFOgcd/tUaHCHoALRDvzhZ9WoHroTQyRlCKniZzcCzSDqxJALsrV9
 L7H0bNYLYBJgdlVDFJO0+dZ1CvbiCSTZu31WEbo84qTVRhvgG4Ajb4qnzYG90Jns/Ft+
 JCk/ZeXgvtjf3DmaeLm9XcVOSS5RQKC4XRf1IxUV0gHl0aQD9iDcMpwwsxdh3v84Y2eL
 awU8TyOe9ZJaPOCb++Sl+VdwwWbvbGnZPiTQcroyKbiJYcyKleflqgaaflyDZQayNdLF
 eHBQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=OOXgXPEn
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
Reply-To: ava014708@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello Dear,
how are you today?hope you are fine
My name is Dr Ava Smith ,Am an English and French nationalities.
I will give you pictures and more details about me as soon as i hear from you
Thanks
Ava
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
