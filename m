Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5911D54AA
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Oct 2019 07:09:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8E9F87DB1;
	Sun, 13 Oct 2019 05:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bps2umwzQLWT; Sun, 13 Oct 2019 05:09:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97BD987D76;
	Sun, 13 Oct 2019 05:09:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A5BA61BF3F2
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 05:09:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9FFFE86DB4
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 05:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6hzioCmvKw0B for <devel@linuxdriverproject.org>;
 Sun, 13 Oct 2019 05:09:44 +0000 (UTC)
X-Greylist: delayed 01:24:11 by SQLgrey-1.7.6
Received: from listssympa-test.colorado.edu (listssympa-test.colorado.edu
 [128.138.129.156])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3D74686D16
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 05:09:44 +0000 (UTC)
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D3jT2F009323
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 21:45:29 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D3jTaQ009309; Sat, 12 Oct 2019 21:45:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to       
 :cc;        bh=WFlHeCQkLJIGXl9Y3KrukrQID/Wna2DJQv+XBSRue9Y=;       
 b=XSNQSZgTy/3vmdQhLFPTjXXYD6ObdqSRS6amglcHznGRfnkPseJTLpqG9mOCmXl20O        
 yIHDn/sAzQOKTJcW92jhNrq38uA1AW8FAVMp/p+RDlfrBN4jSNPVGjVxOBCnDbl/9fqj        
 QjQNcNQbugzH3odS4wlSIae/lZolrXDPU0cZgOqJvTvBAKVVPfzbZvyNNTEiRf6lTwwU        
 E8jvNcw8MbQjm91OZL4ozM0rTDsPxu0yEFfUSHLkFsc8VwjVv5uY2+mcMpXAeidrfPSi        
 ckhYDlIvrUpEaplYaM3oIpnshhIrYknkLUi3TStf4taJX64c439wzauU2hee+gtVbzf/        
 Itxg==
Received: from MWHPR03MB3293.namprd03.prod.outlook.com (2603:10b6:a03:1a0::49)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BY5PR16CA0036.NAMPRD16.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 19:26:13 +0000
Received: from BN8PR03CA0004.namprd03.prod.outlook.com (2603:10b6:408:94::17)
 by
 MWHPR03MB3293.namprd03.prod.outlook.com (2603:10b6:301:42::37) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Wed, 9 Oct
 2019 18:10:36 +0000
Received: from SN1NAM01FT025.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e40::200) by BN8PR03CA0004.outlook.office365.com
 (2603:10b6:408:94::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2220.19 via Frontend
 Transport; Wed, 9 Oct 2019 18:10:35 +0000
Received: from ipmx7.colorado.edu (128.138.128.233) by
 SN1NAM01FT025.mail.protection.outlook.com (10.152.65.210) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384)
 id 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 18:10:35 +0000
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 11:16:37 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:38:57 -0600
Received: from ipmx8.colorado.edu ([128.138.67.85])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 10:11:22 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:56:44 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731544AbfJIP4n (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 11:56:43 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:39589 "EHLO       
 mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731386AbfJIP4n (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 11:56:43 -0400
Received: by mail-lj1-f193.google.com with SMTP id y3so3031425ljj.6 for
 <linux-kernel@vger.kernel.org>; Wed, 09 Oct 2019 08:56:40 -0700 (PDT)
Authentication-Results: spf=none (sender IP is 128.138.128.233)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=pass (signature was verified)
 header.d=google.com;o365.colorado.edu; dmarc=pass action=none
 header.from=google.com;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
IronPort-SDR: QCPlWeP2Mmtgyw36OaU1WcyI9VadiOBUOIZ5bhkwjA6VCJqpEHOJdPyY8h3XIbMdAXchOqzl4G
 YYqlZAVB7qS/ok00RId9Pep/OWcT7rnrQ=
IronPort-SDR: pg0aaSILaXZiLQt5f4CVPjzpUachleCMu/gSFgTYZdW7kVn3YFQeTpWIAFl+uMaEmBsfgWvIul
 kts2CGra5QVjJJAJm6o/HvNvpv0/ZvM7o=
IronPort-SDR: xj1kCCAe3IJ8i9MP+Uy0GqkpW3A0nnFk6lwIUh7QGqIb2oA3XQnhPal4kV2L+goSbokaZC/Lza
 KsBe+fDCxpvYSGAMhwMe+1zCtsgVf2d6U=
IronPort-SDR: eqskA+sc+mtlf44d/WeO/J+hmE8w5Csvfpl5Wds6bMqF8edXqmrbdTB2m794tQ7zj8cFT0IN63
 r0geMpZg13Xy9c2xqWBfXkn/2TfNEQrTM=
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: migi9492@g.colorado.edu
Authentication-Results-Original: mx.colorado.edu;
 dkim=pass (signature verified)
 header.i=@google.com
IronPort-PHdr: =?us-ascii?q?9a23=3AnQR7rRHB94Tu/Dmvzg6wW51GYnF66ZnXHytQx4?=
 =?us-ascii?q?Quj69HbqWk+cq8ZB7BsKw+xFacR57SrulEgrCL7fOoUjka7JKIoH0ON4ZBUx?=
 =?us-ascii?q?YVhMlF+m5oSIbNQQWzZPK/YCs9E8BPElRi+iLzKh0PQJ+gPgWI/y7Xj3ZaUl?=
 =?us-ascii?q?23fUI9JrHwG4vfytq6zfuz/JuBeQhGiSCwZ7h/N0e3q0DLu9ESkM5+LfQ/0B?=
 =?us-ascii?q?zM8HdBZ+kEwG5zPlucklP96pWr4ZRh/i9M6e4mkqwIGe2yN+xwBfQKBz91Vg?=
 =?us-ascii?q?J9rIWj/VGLBQGPs0QyVkUbuSNLJyrkwyH+D6aqkTHntfBE+QXdAsv/F5wWYC?=
 =?us-ascii?q?rh341QcgLl2RZSZFtbuCmfwoQ4xOpR9SKagSVE8YHoccbOKv9yR6P5U+smR1?=
 =?us-ascii?q?pxb+oPcCZNG7iGVNUGCuUFNsZKqabHqV0NlQCzJzWIHPrAmzpvrXrG2fdi9I?=
 =?us-ascii?q?FDWUmOlERoV5pGoVX0gNOyL44AaMeW8IvD8mSZbfNwwy6muJXhKzke8d+lY5?=
 =?us-ascii?q?doNtKS82UrGRnvqAmSkqrdARyX6PQqmUOdw+BkErOhkmxCyUk56nDnjo9kwr?=
 =?us-ascii?q?DLv6Qe7GnO6Cpr4N0yKebkV0pAQNepV59isCWAB6dOf5spcW5PoQQk9qMskL?=
 =?us-ascii?q?2FQhAE2p4V2Q/5TcCqcrKGvBbfS/msRFUwzDotMPr3z16foUq+7ObjBuy+6V?=
 =?us-ascii?q?RP/3NioP2QsWIojwbvxtO/WuYl72qP1wu09yTQxPpPcX4rl5TFdoMQmP01nb?=
 =?us-ascii?q?8LgW3OHyPsln3Njcr0Pg1ssqDgo6yvabbml7OYFpFutxnTO7wqq8WaWuMZKg?=
 =?us-ascii?q?4VX2i649W/0r7HwEyifI5WgKEqm4vp7szReZ9KubywHjIP0osuqBmjMT203p?=
 =?us-ascii?q?N9/zFPZBoNMFrPx6n1K16bdaOwHbK+mVOqiDBx27XcM6b8BomYNnHYi+S7J+?=
 =?us-ascii?q?RU9lJcxQwvzNtW+5NTDPQ7LenuXlPq6oyKCw9/OAuwxPzuBNI7248DCiqDAa?=
 =?us-ascii?q?6cZbvbqkTApvkuLO+FeJIPtX7jJuIk6f/jgT5xmVIUcaSzm5pCQH+/GftiLg?=
 =?us-ascii?q?OSZn/h?=
IronPort-PHdr: =?us-ascii?q?9a23=3AkdrFChOClPc1a5OhrBEl6mtUO3oLmJTReyML45?=
 =?us-ascii?q?46gq5PdaL9ocywIhmGtr1k2UXSVMDA6/se1rSF+6u1Q2EE6IaMvDcYfZhFRx?=
 =?us-ascii?q?IJ2qB010RoSIbNQQX3efHtaCM+EYJJU1o2t2ruaxAMRp+mPQCBxx/6pXZaUl?=
 =?us-ascii?q?23fQogI+XwF8vMgt6s1ue0qYfebQhSiTy2bKggLRPztwjJsthTnYwwJLw2z0?=
 =?us-ascii?q?nFq2dFKeFb3nhhKl/Wnhqu/dq6/pNo73ZMvJdDv4YIGe2yN+xwH7dTX1FEey?=
 =?us-ascii?q?h9rIWj/VHJTV6wyH88X04vkT5qIif16EDLBbTrryjgj8tRnxacNJfab4kqGg?=
 =?us-ascii?q?SI1J12RU7Z3XRiVXZxuCmfwoQ4hvdrmzSYnC5w/5+TO5+QOMN+Wo3lQdEqdV?=
 =?us-ascii?q?ttAOFbWzV6OLjiZo4AC+EhL+B3lYf7pGMVoDmCIRG1K7Lq7RRNtnushYpfsa?=
 =?us-ascii?q?xpWUmOlERoV8MvkFjS687cJp41ctyXx5aZlzfDSelPgmfgwdHhTUAPiM+pRf?=
 =?us-ascii?q?VoMvD9zUc1PSWZjG62kbLKPQ2F8c4mtUSR660xW/ut7gxv40k56nDnjo8ViL?=
 =?us-ascii?q?DvjaQswE3L5wUix4oOecK8c29ybJmgIpxUrRG2D7YuSfEtZHhKphok4JQlh6?=
 =?us-ascii?q?CDcjoA+oo24TjjRv29fdaM3g38aYPzaX8wzDotMPr3qkaw726r1b3ZXPC21Q?=
 =?us-ascii?q?cTiRhhzt7ekygX6zDI0tiaEupQ0Emc4har1C7I4bF6PkIKi/fGGsRix7UVjq?=
 =?us-ascii?q?o6vEXPBCHOo0ST7ufePg1ssqDgo+/kYoTKor6CLbJspwjmNpUnv5e4IPw+KQ?=
 =?us-ascii?q?gOfnKq+uK/8IDipnHCXLsWkvQUoveFu8yBdNsJr7OEWQ9Y38Us9yi1HTnhtb?=
 =?us-ascii?q?ZQ1TFPZBoNMFqmk5jmbgSdaOC9DO24hUyriisu3f3dI7n9V43ENWOQyu2zVK?=
 =?us-ascii?q?th60Na1As4xMxe4JQRMLwaPfbvQRGh5tnISBQ+NwuuyurgTthxy9BWVWGOB/?=
 =?us-ascii?q?qBObjJ+R+T5+0pKvWRfoJdpjvnKvYk6vKvxX80kFMQZ++oiLMYb3e3GvkgKE?=
 =?us-ascii?q?KcbA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0ExAADcCZ5dh1VDioBlGwEBAQEBAQE?=
 =?us-ascii?q?FAQEBEQEBAwMBAQGBagMBAQELAYIagUQxKoQjjlyCD5QDhkwDGDEUAQEBAQE?=
 =?us-ascii?q?BAQEBCBgVAgEBAQGHECM3Bg4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQg?=
 =?us-ascii?q?phTQMgnRSawEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBEgJJVScBAQEDAQIPER0?=
 =?us-ascii?q?BATcBBQkBAQoLDQICJgICAx8SAQUBHAYTBR2DAIILo32BAzyKMXWBMoJ9AQE?=
 =?us-ascii?q?FhXiBPwkSeigBjA0YgUA/hCM+gmEChG+CWIxlglOHN5ZYgiyEepAfG4I6i3q?=
 =?us-ascii?q?LDC2nTw8jgUWBfDMaCBsVbAaCNVAQFIFPCQMXg1CKcyIygQiTXQEB?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0F0AADjBZ5dh0O0hNFlGwEBAQEBAQE?=
 =?us-ascii?q?FAQEBEQEBAwMBAQGBagMBAQELAYIagUMyKoQjjluCDxSTb4ZMAxgxFAEBAQE?=
 =?us-ascii?q?BAQEBASAUAQIBAQEBhxAjNwYOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwk?=
 =?us-ascii?q?IKYU0DIJ0UmsBAQEBAQEBAQEBAQEBAQEBAQEBAQEBARICSVUnAQEBAwECDxE?=
 =?us-ascii?q?dAQE3AQUJAQEKCw0CAiYCAgMfEgEFARwGEwUdgwCCC6NxgQM8ijF1gTKCfQE?=
 =?us-ascii?q?BBYV3gT8JEnooAYwNGIFAP4QjPoJhAoRvgliMZYJThzeWWIIshHqQHxuCOot?=
 =?us-ascii?q?6iwwtp08ygUWBfDMaCBsVbAaCNVAQFIFPCQMXg1CKcyEzgQYBAZNdAQE?=
X-IPAS-Result: =?us-ascii?q?A0ExAADcCZ5dh1VDioBlGwEBAQEBAQEFAQEBEQEBAwMBA?=
 =?us-ascii?q?QGBagMBAQELAYIagUQxKoQjjlyCD5QDhkwDGDEUAQEBAQEBAQEBCBgVAgEBA?=
 =?us-ascii?q?QGHECM3Bg4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMgnRSawEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBEgJJVScBAQEDAQIPER0BATcBBQkBAQoLD?=
 =?us-ascii?q?QICJgICAx8SAQUBHAYTBR2DAIILo32BAzyKMXWBMoJ9AQEFhXiBPwkSeigBj?=
 =?us-ascii?q?A0YgUA/hCM+gmEChG+CWIxlglOHN5ZYgiyEepAfG4I6i3qLDC2nTw8jgUWBf?=
 =?us-ascii?q?DMaCBsVbAaCNVAQFIFPCQMXg1CKcyIygQiTXQEB?=
X-IPAS-Result: =?us-ascii?q?A0F0AADjBZ5dh0O0hNFlGwEBAQEBAQEFAQEBEQEBAwMBA?=
 =?us-ascii?q?QGBagMBAQELAYIagUMyKoQjjluCDxSTb4ZMAxgxFAEBAQEBAQEBASAUAQIBA?=
 =?us-ascii?q?QEBhxAjNwYOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DIJ0UmsBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBARICSVUnAQEBAwECDxEdAQE3AQUJAQEKC?=
 =?us-ascii?q?w0CAiYCAgMfEgEFARwGEwUdgwCCC6NxgQM8ijF1gTKCfQEBBYV3gT8JEnooA?=
 =?us-ascii?q?YwNGIFAP4QjPoJhAoRvgliMZYJThzeWWIIshHqQHxuCOot6iwwtp08ygUWBf?=
 =?us-ascii?q?DMaCBsVbAaCNVAQFIFPCQMXg1CKcyEzgQYBAZNdAQE?=
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="286979293"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="371279519"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1e100.net;
 s=20161025; 
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date        
 :message-id:subject:to:cc;       
 bh=WFlHeCQkLJIGXl9Y3KrukrQID/Wna2DJQv+XBSRue9Y=;       
 b=bJInqtD0Xo080viSuzXZ0A7u0VB42KCZ0xphTIhNcgmt3LynXlSpE6LcPFWDFqskIC        
 SRUbFP1FskuOlIdshiBfTGmb9sJG1RENca30MMgAJadCEESrj9Pkwr1SU1smqBStxH6+        
 03WpcvS4LoClxqlgkn3VhB9xfVEnovXeBPIYlKjyj6cbYgTWi3cY9JGrakcIEvXaDLAc        
 XahOaKiQWyB+7oQlT3KMWgmese+3ukwEQnGv6Rai6RrpIOaO8CNWAOp6LxYFBzK7W8zK        
 JFf2TIcwyVjH+IE4rj/iVwVU4Fh3B5rAqzagiaJYt54sxq0+d5tmBr8Ls5HscC4BbyD6        
 yNlQ==
X-Gm-Message-State: APjAAAU1lPPq8ZNHXi1XHp9/OhaPdsiiwuQZt25otkO7Jt2uwBihMjzZ 
 famrlytng1pEoqAXK9g/TdyzXmpZCxawBEZkvCw0Aw==
X-Google-Smtp-Source: APXvYqwLxpC/TiGljRX1NvHEZ/6aqwkZ3/aGIm6AEuP60itEXeqeP/1veKDYHWpVrchgY89b5qCCjN0JGRYZm6lQc50=
X-Received: by 2002:a2e:6a04:: with SMTP id f4mr2924621ljc.186.1570636599381;
 Wed, 09 Oct 2019 08:56:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com>
 <20191008130159.10161-1-christian.brauner@ubuntu.com>
 <20191008180516.GB143258@google.com>
 <20191009104011.rzfdvq7otkkj533m@wittgenstein>
In-Reply-To: <20191009104011.rzfdvq7otkkj533m@wittgenstein>
From: "Todd Kjos" <tkjos@google.com>
Date: Wed, 9 Oct 2019 08:56:28 -0700
Message-ID: <CAHRSSExAL3fQMP9x9p34qF8dnFKLSp7EzhZ7Y5y-qbzExCRo1w@mail.gmail.com>
Subject: Re: [PATCH] binder: prevent UAF read in
 print_binder_transaction_log_entry()
To: "Christian Brauner" <christian.brauner@ubuntu.com>
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 18:10:35.5955 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 22552d17-9292-4303-7ebc-08d74ce3fb70
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.128.233; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:MWHPR03MB3293; H:ipmx7.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: SN1NAM01FT025.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 22552d17-9292-4303-7ebc-08d74ce3fb70
X-MS-TrafficTypeDiagnostic: MWHPR03MB3293:|MWHPR03MB3293:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 18:10:35.4093 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 22552d17-9292-4303-7ebc-08d74ce3fb70
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.128.233];
 Helo=[ipmx7.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR03MB3293
X-MS-Exchange-Transport-EndToEndLatency: 01:15:39.2550355
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?n7BHC3gct3LDfyPRlPFV+cJEDisOaEHMpJY3OtwlSi6HieRDRJHUuGJoksTz?=
 =?us-ascii?Q?YyDqdhpq8dNpUMIONDEFVrp3DCpbY+GJtU+6tvt0cXMTgoZpjcW4iS38yRsK?=
 =?us-ascii?Q?mMwu2ftf25IEb+QjIAf6fAVtyBoLa/oVipGhXCpo6LDthYF4cvvRxv2Cbyx3?=
 =?us-ascii?Q?xurSNlfH1FVw9ZC1PvyCJ3YTfVFYh+MJgd6qwAmPXz8zjuWeg1lOCVtiYL9j?=
 =?us-ascii?Q?fc4aSdjacYmcoMXiKkqEthn8AtVWDfa0IH/nMy02Yn37KV92a9P4d57m/zq6?=
 =?us-ascii?Q?R9J2GyzNGKGcBLZ3kGqhpTkx0lCzRmagd/hNc/RezSHv65jQFnRfjjlt6DK1?=
 =?us-ascii?Q?TJVLfeNU5Ieo7epO+r+0hfwObbjydXbmbdfCk0sIsQ1t+4I5De32+yyOK4tU?=
 =?us-ascii?Q?7g4JSvxL61niyRRm4eNuN/Sj56Sj0pHj6ivUp2DLKLgBGFqkeyESyk/etReQ?=
 =?us-ascii?Q?B+hhd6A+N4zNI88LklgH5+ci73FtLt6SMq2Z2OMFXUAsPyM2Tua7L62F/IVa?=
 =?us-ascii?Q?F2yx4npz+MGdPUt1AlFP6W8q8WxoXTREdYV1+h+xn59FZyCIy3tmFPfLzxWN?=
 =?us-ascii?Q?w/17HH4DtnRctZYHxwdEHw9MhnPdhS2+txpcr4aKAxztBS7A2L5mmuehn0hD?=
 =?us-ascii?Q?ekpRLsPjG3D0ss56vPpidp5tBvWKkAvR66eJ+Sge48OTsWVqqXiLV0Fib9lC?=
 =?us-ascii?Q?YJ3lHsZ/I/NEjKbjNHyO3L45WngkDeTtY7aFbfGKKoVLxi+3zWzJe0q6wYwp?=
 =?us-ascii?Q?6vBmvA8jmMOshl8LY/LYFOSe2O2qq3uf3N7s5ne14T3aDJ9SeZn7qKvuT88+?=
 =?us-ascii?Q?AKxsRRq1o8eIfpG5xkPzFsjGKciZZd9iPGXa9BB+jTQEwA9mTfphMZo1eIjG?=
 =?us-ascii?Q?SGw9QUYv2HX2mbD2y+zJq/namJ//tNK8RtnJVv7W+oWFHLhzs/m4vzWodEzI?=
 =?us-ascii?Q?qm06MeeO48fnXpy6vMQqd5SZhi7hgjWoA52DXa9hx/wUKMwtNqiadI/1VAH+?=
 =?us-ascii?Q?44IChS2NYSLwVcbrs1NoNCWuuukuGFDbGaz/w/xWfMPwmX08iGyVqMy76sTv?=
 =?us-ascii?Q?l4QqHSdsHi0daIfXruXxm74iOAJrPXRUJoepkJ5/3ID6hRRQfN8=3D?=
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Todd Kjos <tkjos@android.com>, Jann Horn <jannh@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Hridya Valsaraju <hridya@google.com>,
 =?utf-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn
 Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 9, 2019 at 3:40 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Tue, Oct 08, 2019 at 02:05:16PM -0400, Joel Fernandes wrote:
> > On Tue, Oct 08, 2019 at 03:01:59PM +0200, Christian Brauner wrote:

[...]

> >
> > One more thought, this can be made dependent on CONFIG_BINDERFS since regular
> > binder devices cannot be unregistered AFAICS and as Jann said, the problem is
> > BINDERFS specific. That way we avoid the memcpy for _every_ transaction.
> > These can be thundering when Android starts up.
>
> Unless Todd sees this as a real performance problem I'm weary to
> introduce additional checking and record a pointer for non-binderfs and
> a memcpy() for binderfs devices. :)
>

I don't see this as a real problem. In practice, memcpy will be moving
< 10 bytes. Also, by the time this code is in an android device,
CONFIG_BINDERFS will always be enabled since this is how we are
removing binder's use of debugfs. So a micro-optimization of the
!BINDERFS case will not be meaningful.

[...]

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
