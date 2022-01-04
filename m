Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22501483FAA
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jan 2022 11:16:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2914140936;
	Tue,  4 Jan 2022 10:16:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S9HafhA_5HFr; Tue,  4 Jan 2022 10:16:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A21744050E;
	Tue,  4 Jan 2022 10:16:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 03F081BF27A
 for <devel@linuxdriverproject.org>; Tue,  4 Jan 2022 10:16:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E2F4A4050E
 for <devel@linuxdriverproject.org>; Tue,  4 Jan 2022 10:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cy79EzFZPmwE for <devel@linuxdriverproject.org>;
 Tue,  4 Jan 2022 10:16:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 43B7840509
 for <devel@driverdev.osuosl.org>; Tue,  4 Jan 2022 10:16:07 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id x7so80713378lfu.8
 for <devel@driverdev.osuosl.org>; Tue, 04 Jan 2022 02:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=t+9EIacgMZCghdTp+3bNVDSu5ncI7a3roAIq3fjaYYM=;
 b=AqmX8nrx0Pj0FsB1KP0GEa8jCdISbki3Z4RdDhxAjvZv2NDorgKTIAkElYmk2SXGj8
 fQ8UFS4xECbSJhXgx8r0Cxn8ir450b+M8dvdI/mwqxnpvX+lhDpBjAnjO/P6Ipk/o2jx
 JgUVrdrdUqX0D2793r9I/zSpC99yc1F3yRc+WwfN1U3r/nZXOXZpmxDMJ/io7eUomPse
 dgC4ebfrk5RdQP0BHAu1IkVLpscnxu3Yn5dfmxiyP2Yhm/+su9AInoVD838i+pkE8l8Y
 aTprXH/MhP0XMKap3SMaUefypyowgwjP049hRlrxphpzpYF7oa7rF5qnR7U2atpqeQOS
 IO7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=t+9EIacgMZCghdTp+3bNVDSu5ncI7a3roAIq3fjaYYM=;
 b=0+saF/h1X/XufiHs35M/QAShH/qlyBKo3MkfH7Kgcc0jhSfec0bhTzG2Xi0pv9Yzdi
 Ag2bazL83k5C29wN4/ojScylRHkH5wlc1JeiMQmRCwGFose37+iZKQ1tbh0yRRYjKMZY
 3LVB9nw4XZD/BMSQ6n0eaHygoCnGBS8e/kMlSl63f3jlCGYBIcWwdLpp2wzAYpydOq44
 YphVMoL/i/pq0Ywsm5Dd8K7FzaV/pWaK1zTK5FGt64H3pNRhSTzfX4AHPmz7f5FTNRvl
 TNXOV4vlHiN5N5rsofpS8da+L7Gy3IY2/ceflciR6opsd+GbRUapuBKIUXjzbJU6Rh/a
 ILGg==
X-Gm-Message-State: AOAM530JUfGA+VfJ/MlmVg2fITW0ckrOMyEgjbcb9j8UfsvsjUczW4xa
 cXakQ/6ZeWhYb0Xsmvmcb5HWImXcznJkS+vldZk=
X-Google-Smtp-Source: ABdhPJyfo4WQST3Caz+5Vr55kbXDkKnJxLDSbKpm8IVnB7enx7xakrCez7TCEJyvd77RcJ1KoKM3AWHwGpQJVa0gkXk=
X-Received: by 2002:a05:6512:3487:: with SMTP id
 v7mr43177368lfr.94.1641291364789; 
 Tue, 04 Jan 2022 02:16:04 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a2e:7205:0:0:0:0:0 with HTTP;
 Tue, 4 Jan 2022 02:16:04 -0800 (PST)
From: "RGI CO.LTD" <mrfausto.70@gmail.com>
Date: Mon, 3 Jan 2022 22:16:04 -1200
Message-ID: <CAMk3qtyOh33zKNistZRVrRewb65A3yn0HwW2b+5H4QC8x5N5rw@mail.gmail.com>
Subject: WE CAN DO BUSINESS TOGETHER
To: undisclosed-recipients:;
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
Reply-To: info.rgicompanyltd@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Good Day.

RGI Genealogical Investigators specializes in probate research to locate
missing funds, inherited funds and consignment around the world. We can
also help you find wills, obtain copies of certificates. Recently a woman
from Rothschild family one of the richest and famous family in the city of
Hesse-Kassel Frankfurt Germany that has been suffering from (hepatocellular
of the liver) and unstable health challenge contacted our company that we
should contact a trustworthy business minded person who is capable to
invest her funds in a lucrative business.

Our service fee is 2% of the funds and we will be paid after you received
the funds. The funds transfer process should take just a matter of days as
we have the mechanism and expertise to get this done very quickly. Please
if you find this letter offensive ignore it and accept our apologies, but
if interested get back to us as soon as possible.

CONTACT ME FOR MORE INFORMATION:

Warmest Regards,
Dr.Ryan J.Wood, CEO
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
