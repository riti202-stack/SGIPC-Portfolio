<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="resource.aspx.cs" Inherits="SGIPC_Portfolio.resource" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" type="text/css" href="style/resource.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="resource-container">
    
    <div class="resource-header">
        <h1>Competitive Programming Toolkit</h1>
        <p>Curated platforms, roadmap sheets, and language references to sharpen your algorithms.</p>
    </div>

    <h2 class="section-title">Practice Platforms</h2>
    <div class="resource-grid">
        <div class="resource-card">
            <div>
                <div class="tag-container"><span class="tag platform">Contests</span></div>
                <h3>Codeforces</h3>
                <p>The premier global platform for regular 2-hour algorithmic contests and comprehensive division practice problems.</p>
            </div>
            <a href="https://codeforces.com" target="_blank" class="card-link">Launch Platform</a>
        </div>

        <div class="resource-card">
            <div>
                <div class="tag-container"><span class="tag platform">Interviews</span></div>
                <h3>LeetCode</h3>
                <p>Excellent environment for structured interview-focused data structure patterns and top company technical sets.</p>
            </div>
            <a href="https://leetcode.com" target="_blank" class="card-link">Launch Platform</a>
        </div>

        <div class="resource-card">
            <div>
                <div class="tag-container"><span class="tag platform">Math & DP</span></div>
                <h3>AtCoder</h3>
                <p>Renowned for exceptionally clean problem statements, high-quality math tasks, and standard Educational DP sheets.</p>
            </div>
            <a href="https://atcoder.jp" target="_blank" class="card-link">Launch Platform</a>
        </div>
    </div>

    <h2 class="section-title">Topic Roadmaps</h2>
    <div class="resource-grid">
        <div class="resource-card">
            <div>
                <div class="tag-container"><span class="tag easy">Easy</span><span class="tag medium">Medium</span></div>
                <h3>A2Z DSA Course Sheet</h3>
                <p>A step-by-step master checklist mapping foundational structures to interview implementation logic.</p>
            </div>
            <a href="https://takeuforward.org/strivers-a2z-dsa-course-sheet-jal-series/" target="_blank" class="card-link">Open Sheet</a>
        </div>

        <div class="resource-card">
            <div>
                <div class="tag-container"><span class="tag medium">Medium</span><span class="tag hard">Hard</span></div>
                <h3>CP-Algorithms Guide</h3>
                <p>Advanced comprehensive mathematical proofs, implementations, and complexities for foundational structures.</p>
            </div>
            <a href="https://cp-algorithms.com" target="_blank" class="card-link">Read Articles</a>
        </div>

        <div class="resource-card">
            <div>
                <div class="tag-container"><span class="tag medium">Medium</span><span class="tag hard">Hard</span></div>
                <h3>CSES Problem Set</h3>
                <p>The standard reference collection containing 300 core problems spanning Graph algorithms, DP, and String Matching.</p>
            </div>
            <a href="https://cses.fi/problemset/" target="_blank" class="card-link">View Tasks</a>
        </div>
    </div>

    <h2 class="section-title">Core CP Curriculum</h2>
    <div class="resource-grid">
        
        <div class="resource-card curriculum-card">
            <div>
                <div class="tag-container"><span class="tag easy">Essential</span></div>
                <h3>Mathematics & Number Theory</h3>
                <p>The bedrock of algorithmic efficiency, filtering down search spaces through numeric laws.</p>
                <ul class="topic-list">
                    <li>Prime Sieve (Sieve of Eratosthenes)</li>
                    <li>GCD & LCM (Euclidean Algorithm)</li>
                    <li>Modular Arithmetic & Inverse</li>
                    <li>Combinatorics (nCr computation)</li>
                    <li>Matrix Exponentiation</li>
                </ul>
            </div>
        </div>

        <div class="resource-card curriculum-card">
            <div>
                <div class="tag-container"><span class="tag medium">Crucial</span></div>
                <h3>Advanced Data Structures</h3>
                <p>Optimal memory state tracking mechanisms for complex query/update operations.</p>
                <ul class="topic-list">
                    <li>Disjoint Set Union (DSU)</li>
                    <li>Segment Trees (Point & Lazy Updates)</li>
                    <li>Fenwick Trees (Binary Indexed Tree)</li>
                    <li>Sparse Tables (Range Minimum Queries)</li>
                    <li>Tries (Prefix Searching)</li>
                </ul>
            </div>
        </div>

        <div class="resource-card curriculum-card">
            <div>
                <div class="tag-container"><span class="tag medium">Medium</span><span class="tag hard">Hard</span></div>
                <h3>Dynamic Programming (DP)</h3>
                <p>Breaking down optimization setups into overlapping dependent subproblems.</p>
                <ul class="topic-list">
                    <li>Classical DP (Knapsack, LCS, LIS)</li>
                    <li>Bitmask DP</li>
                    <li>DP on Trees</li>
                    <li>Digit DP</li>
                    <li>SOS (Sum of Subsets) DP</li>
                </ul>
            </div>
        </div>

        <div class="resource-card curriculum-card">
            <div>
                <div class="tag-container"><span class="tag medium">Crucial</span></div>
                <h3>Graph Theory & Trees</h3>
                <p>Modeling structural relations, paths, networks, and relational trees.</p>
                <ul class="topic-list">
                    <li>Traversals (BFS, DFS)</li>
                    <li>Shortest Paths (Dijkstra, Bellman-Ford)</li>
                    <li>Minimum Spanning Trees (Kruskal, Prim)</li>
                    <li>Lowest Common Ancestor (LCA)</li>
                    <li>Tarjan's strongly connected components</li>
                </ul>
            </div>
        </div>

        <div class="resource-card curriculum-card">
            <div>
                <div class="tag-container"><span class="tag hard">Advanced</span></div>
                <h3>Strings & Computational Geometry</h3>
                <p>Pattern match tracking engines and geometric spatial positioning algorithms.</p>
                <ul class="topic-list">
                    <li>String Hashing & Collision Handling</li>
                    <li>KMP Algorithm</li>
                    <li>Z-Algorithm</li>
                    <li>Convex Hull (Graham Scan)</li>
                    <li>Line Intersection & Sweep Line</li>
                </ul>
            </div>
        </div>

        <div class="resource-card curriculum-card">
            <div>
                <div class="tag-container"><span class="tag easy">Essential</span></div>
                <h3>Searching & General Paradigms</h3>
                <p>Standard decision-making approaches to divide collections and seek options.</p>
                <ul class="topic-list">
                    <li>Binary Search / Binary Search on Answer</li>
                    <li>Two Pointers & Sliding Window</li>
                    <li>Greedy Approximations</li>
                    <li>Meet in the Middle</li>
                    <li>Mo's Algorithm (Square Root Decomposition)</li>
                </ul>
            </div>
        </div>

    </div> </div> ```



</asp:Content>
