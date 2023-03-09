Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 823316B2730
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Mar 2023 15:43:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 047EC410D2;
	Thu,  9 Mar 2023 14:43:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 047EC410D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oi3pfxpY_B17; Thu,  9 Mar 2023 14:43:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 19D1B410CD;
	Thu,  9 Mar 2023 14:43:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19D1B410CD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4AA201BF3DF
 for <devel@linuxdriverproject.org>; Thu,  9 Mar 2023 14:43:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3161641005
 for <devel@linuxdriverproject.org>; Thu,  9 Mar 2023 14:43:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3161641005
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SDuyfLdrV0Xu for <devel@linuxdriverproject.org>;
 Thu,  9 Mar 2023 14:43:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65BAB40FC4
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 65BAB40FC4
 for <devel@driverdev.osuosl.org>; Thu,  9 Mar 2023 14:43:04 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id i20so2050199lja.11
 for <devel@driverdev.osuosl.org>; Thu, 09 Mar 2023 06:43:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678372982;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=K6Bk9Rll4XytHVYbNP4OYNqdGJ6FbvvoyRcApV5jxG4=;
 b=sHbWz1aeihOnndhzbu2i65oXKiq3QO5z0vYRB/8PwfObgqn97+WCkfdoNQRWasE+Tg
 NFFrWrCrbcfTr+FqwWuBRSI5r7X9+Dw9GrN6frs5NWG4v4V2qVG93c4II90QaD5HlQ2y
 aoqdb5A09fTFjcCpG3cOlsGb1Y621uECBa8VeNXQ+b7zZkXhvoFpb+/1mGFcMtXv2YLz
 nx0hCFVKTsA+2EXsD83JdXhKMeF6+O5Ff41D5s7UdEJ/eA+9k6Xb79E/7dbb9X0NJjPq
 hPQqTyQgzXy5IP/7/zQv200NnScYqTQUDMiLeKXhGEf3q6c8DeKoYF1bEsrZ2B9sxR32
 Apdw==
X-Gm-Message-State: AO0yUKXW0r2J4g81UBzV+uEhH3KIUvh/Sqwclo87XlopT9pK8pM2LZvL
 kFZjLRQqT62yzDMrEde+RjnTBDgFvhlpS4TbKso=
X-Google-Smtp-Source: AK7set/R9xky8G5DC+UKHHslc1D9/bWDNfOq7pyuivXIT/Po7+VfxsSdpnWv9cvgxUHrZWQRym1XWChFPEtElI3V4b4=
X-Received: by 2002:a2e:b988:0:b0:295:a699:8cef with SMTP id
 p8-20020a2eb988000000b00295a6998cefmr6743226ljp.1.1678372982049; Thu, 09 Mar
 2023 06:43:02 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a2e:b5ad:0:b0:295:b00e:6bef with HTTP; Thu, 9 Mar 2023
 06:43:01 -0800 (PST)
From: Mr mohammed sheikh <mohammedshamekh99@gmail.com>
Date: Thu, 9 Mar 2023 06:43:01 -0800
Message-ID: <CAHYf_X=6nerU89K_kmT_iD-GR5p4FmzKtiFUfNTtpcoBuYArkw@mail.gmail.com>
Subject: URGENTBUSINESSPROPOSAL
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678372982;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=K6Bk9Rll4XytHVYbNP4OYNqdGJ6FbvvoyRcApV5jxG4=;
 b=HsRskcjXAxsjKI71UKhP8lyEpzcTDCZ5WrwWS417omvuJIM2sQse8JNVeFZB78kI4Z
 FKXjBFu2gi9Fgdmh21ez8mUTYRPDcEWyWnSuuDHVGSdt26aPJsyCpp0q9zf8aXquUHLF
 WOfBTimpRwuVTOdzm7EeYRvAOZhYFUgAE5BBuHBhGrxJAkA+I2z2pLnuas61+Lsf2ouX
 Y4njRO2ip2Hn65h7/cyFdFHd/CMvALbM4eNPnGnoL05V8Pf4pZhpSeBHfR5KLkzPeVQN
 96l9E/+Ss/VGtczCU13CP7cJpAlUGRPrZ37sKlRTrGgWWLW/1LnjvQsJ2Iyq5SzGqwdk
 p4aA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=HsRskcjX
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
Reply-To: mrmohammedshamekh11777@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear friend,

Greetings.

How are you today, I hope well?

I found your email contact before a search
private while I needed your help. My name is Mr.Mrmohammed
shamekh . Work with the audit department and manager of
bookkeeping here at UBA Bank of Africa. There is this fund
kept in my custody years ago and I need your help to transfer
this fund to your bank account. for both investment benefit of
for life and the amount is (US$ 27,500. Million Dollars).

I have all the details of the query for the bank to believe and
release the fund to your bank account within 7 business days
banks with your full cooperation with me after success Please note
account 50% for you and 50% for me after the success of the
transfer the funds to your bank account ok.

WAITING TO HEAR FROM YOU.
THANK YOU.

 Mr  Mrmohammed shamekh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
