Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 557536911D9
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Feb 2023 21:05:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB11D41845;
	Thu,  9 Feb 2023 20:05:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB11D41845
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R2Z4qlhV_tfl; Thu,  9 Feb 2023 20:05:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8819B41837;
	Thu,  9 Feb 2023 20:05:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8819B41837
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 01A911BF57B
 for <devel@linuxdriverproject.org>; Thu,  9 Feb 2023 20:05:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB6A260F4D
 for <devel@linuxdriverproject.org>; Thu,  9 Feb 2023 20:05:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB6A260F4D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UPeTw-VahIU1 for <devel@linuxdriverproject.org>;
 Thu,  9 Feb 2023 20:05:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5593C60F41
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5593C60F41
 for <devel@driverdev.osuosl.org>; Thu,  9 Feb 2023 20:05:41 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id n2so2114599pfo.3
 for <devel@driverdev.osuosl.org>; Thu, 09 Feb 2023 12:05:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=uRBAf2S3Zw+NTnHqXMp2W4uNxk+2stxZo3tUhCjLxh4=;
 b=iy0yExID/VxLJaata6MWMotwgX6ewytctuGDZFpKbRUVFQCQ8ocIbM1RGAGVuErSrj
 4Yl/VR+DPPbQ2nacjx/1KQROhh4o1omO0LDgDZqVPHo+T040764meCTENKyGJmaOpp/3
 QWJdoqqsBN0rd5xAh+pYHUmv5NHZlDdyy9PH6mPZxOWtd0EtHKo4kyfqKMPjrcZ4WjEZ
 ahnMNSzNMXzemakzfQoKS8plic3Qj/dgG/U4ZDrKb16miATkrx6CiQ93CcwEUJllIEBG
 OO0zi1HZJY+dpes5oA0cPwvMk7DjMdk0uO/+SEBMUsFpR6MfGI8ClpUcE7E/KGW0ypGC
 miUA==
X-Gm-Message-State: AO0yUKWPdPF0UdkFEJ3mpUzouEtFA+Erd8vDo3wopmgGjjTkQSXriIdi
 54es328pkpa2Wv8wRNmeKV7LZId72VFfauRBB1M=
X-Google-Smtp-Source: AK7set9fImnVw7fgEDPS9T7jMPAmQb9SNng9/1coe83kIGNxbYMv58+1EYj6hiKqcTvSo7Y6DfnJCwG134mQXeRL+8M=
X-Received: by 2002:aa7:9736:0:b0:593:226b:371a with SMTP id
 k22-20020aa79736000000b00593226b371amr2979887pfg.19.1675973140103; Thu, 09
 Feb 2023 12:05:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:522:5b9a:b0:4c2:4301:4fc6 with HTTP; Thu, 9 Feb 2023
 12:05:39 -0800 (PST)
From: NASSIR UDDIN <winningcentre00@gmail.com>
Date: Fri, 10 Feb 2023 04:05:39 +0800
Message-ID: <CAEkFUkJ0M3dSA4wULdX=0qNZ55C+Kmjz+VJFZ=zsn8983atbaw@mail.gmail.com>
Subject: Dear Sir/Madam!
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=uRBAf2S3Zw+NTnHqXMp2W4uNxk+2stxZo3tUhCjLxh4=;
 b=dJ0oeS2AzjX9Ekt5raYv355UBQNZPJFepc9aRaEUmkQzTlOI3YJKz02kpxxP4wUsOi
 Q09/JHtmZcUAunGxSaw1z7sq5bQdhHkxwf6h0tpCXizuOwPoM0v2X+Q+b94nUGeu62c1
 qEaRcetH+jHyTtNezKxZDNyoHnfLvuocaFqBRbzVMWRPkKFa6I5J8OHV6QZ00ghnRBFQ
 TMEiPCzhXmA+WpwmPWB0xOraPcHkchYHzgVs+qnd3oScF43iMX6ecZLLsQRDrwJSQSb2
 oVe6fK/w7pE2R3u8V2FrKuWk8pOcVRpsEVqmzCV52eeUGANFNB76JAvPgS0kD53NPlXc
 Za5A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=dJ0oeS2A
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
Reply-To: nassir.uddin@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Sir/Madam,

I am a consultant with an Investment company that consults for Asian
Development Bank.

I am searching for a foreign partner that can partner with me in a
multimillion dollar business opportunity.

If you are interested contact me.

NASSIR UDDIN
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
