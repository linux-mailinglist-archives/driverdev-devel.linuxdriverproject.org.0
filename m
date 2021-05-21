Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0162638C931
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 May 2021 16:27:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36114844E8;
	Fri, 21 May 2021 14:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0rcrTHskuJCp; Fri, 21 May 2021 14:27:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0286844DC;
	Fri, 21 May 2021 14:27:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BCA511BF292
 for <devel@linuxdriverproject.org>; Fri, 21 May 2021 14:27:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB4D960AE5
 for <devel@linuxdriverproject.org>; Fri, 21 May 2021 14:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A5a3RTdLe793 for <devel@linuxdriverproject.org>;
 Fri, 21 May 2021 14:27:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55E0B60AC7
 for <devel@driverdev.osuosl.org>; Fri, 21 May 2021 14:27:02 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id l1so30776869ejb.6
 for <devel@driverdev.osuosl.org>; Fri, 21 May 2021 07:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bC+BVk3asPi+ZUSMC7dnd7LCiXtnDQzjMHToiE60iIU=;
 b=Q+e4cetFdem0uXv+wJ4p3ocTcJZemU9N1cNx0HpMmdTfOuf33wJTBLumfOhp0ckd21
 V4riwBbT/3XZiyOWCKkMecMEV6sqs+THmqHGaT9kUndyyoTZJGoZ5tnT+mrg7bF2vpgL
 0QKd+4MnXcnb6rRu5JwMbAvREYaQx+DqGhEZy5jm3kzVbVwzJ5KWK2bxy06pKH3hD3yD
 0DwywQsDBtoBnyr/0Tb8oi2J5CnqD0aNHam1L5q3jWucXC/GhXMPk3nn1kXa5LvzGSHN
 rq4mgVLF1qF93NepNwPdOkuGFL3z4DZ5t/dNMcRu45gW/xxEMmmK+bpdNMxhaXLzXmzV
 epFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bC+BVk3asPi+ZUSMC7dnd7LCiXtnDQzjMHToiE60iIU=;
 b=RKrPxGaBlg2WNJgFdznSBHYMBTUWCA4NnqYLwkO4k/qb/VJDoBoDQVpjlfcqTPsZPd
 hpBgzA5iohEchWGDkms2Xs7dhpOYbIilhq9jS2FlOZNz4Xj9sB+hiPraxThyMeDv2Nqo
 IBA90X46C8HQNesg74wGDZNAiubD/zBQyogX23ZT5LlOzTGpNxWwWeyE+gF0m8f3q4Ua
 6Hvpj7kIDkkLuL+ldT2JSPZ65vvNpCf4rAi3NrGmZ0Y3e5AchwXO/OwXZT9+ILX+5Mns
 6cFeoeVP7aWcakxbadeeoI63jiFCrKHPIV1ywSw8uNnYx15zbWdC8uUevieplTFc+01r
 c4pw==
X-Gm-Message-State: AOAM530cgbz7qOJxix5ndvZio711DVjWBV6SPjsWsYnkeBYoA5D051oM
 KMW/px3VTw8Yb15+emR8vnc=
X-Google-Smtp-Source: ABdhPJy5pt4u5Ggi5ifHIcrGgvD1bsNH4yCoax/nIn2y3JTf5wBm9rHRnHUoLSAUDayKjr0hjXS9zQ==
X-Received: by 2002:a17:906:7c9:: with SMTP id
 m9mr10446393ejc.98.1621607220367; 
 Fri, 21 May 2021 07:27:00 -0700 (PDT)
Received: from agape.jhs ([109.52.244.91])
 by smtp.gmail.com with ESMTPSA id bh3sm3564556ejb.19.2021.05.21.07.26.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 07:27:00 -0700 (PDT)
Date: Fri, 21 May 2021 16:26:57 +0200
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: kernel test robot <lkp@intel.com>
Subject: Re: [staging:staging-next 201/268]
 drivers/staging/rtl8723bs/core/rtw_security.c:89:6: warning: stack frame
 size of 1120 bytes in function 'rtw_wep_encrypt'
Message-ID: <20210521142656.GA1409@agape.jhs>
References: <202105201711.QuzeTqRK-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202105201711.QuzeTqRK-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, clang-built-linux@googlegroups.com,
 kbuild-all@lists.01.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi robot,

On Thu, May 20, 2021 at 05:03:14PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
> head:   b9f38e913a926b455e5048a95f53a993b515509f
> commit: 1b11e893eda0907fc9b28696271e2d9c4337e42d [201/268] staging: rtl8723bs: replace private arc4 encryption with in-kernel one
> config: powerpc64-randconfig-r011-20210520 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project bf9ef3efaa99c02e7bfc4c57207301b8de39a278)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?id=1b11e893eda0907fc9b28696271e2d9c4337e42d
>         git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
>         git fetch --no-tags staging staging-next
>         git checkout 1b11e893eda0907fc9b28696271e2d9c4337e42d
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

can't compile this, I get the following error:

make CONFIG_OF_ALL_DTBS=y CONFIG_DTC=y HOSTCC=/home/fabio/0day/clang/bin/clang CC=/home/fabio/0day/clang/bin/clang LD=/home/fabio/0day/clang/bin/ld.lld HOSTLD=/home/fabio/0day/clang/bin/ld.lld AR=/home/fabio/0day/clang/bin/llvm-ar NM=/home/fabio/0day/clang/bin/llvm-nm STRIP=/home/fabio/0day/clang/bin/llvm-strip OBJDUMP=/home/fabio/0day/clang/bin/llvm-objdump OBJSIZE=/home/fabio/0day/clang/bin/llvm-size READELF=/home/fabio/0day/clang/bin/llvm-readelf HOSTCXX=/home/fabio/0day/clang/bin/clang++ HOSTAR=/home/fabio/0day/clang/bin/llvm-ar CROSS_COMPILE=powerpc-linux-gnu- --jobs=8 LLVM_IAS=1 ARCH=powerpc drivers/staging/rtl8723bs/
  CC      scripts/mod/empty.o
clang: error: unsupported argument '-me500' to option 'Wa,'
make[1]: *** [scripts/Makefile.build:272: scripts/mod/empty.o] Error 1
make[1]: *** Attesa per i processi non terminati....
make: *** [Makefile:1226: prepare0] Error 2

moreover I had to add LLVM_IAS=1, and ARCH=powerpc64 is not a valid architecture (used powerpc instead).

Could you help me?

thank you,

fabio
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
